-- PROCEDURE: public.pr_monitor_extreme_traffic()

-- DROP PROCEDURE IF EXISTS public.pr_monitor_extreme_traffic();

CREATE OR REPLACE PROCEDURE public.pr_monitor_extreme_traffic(
  )
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    srv RECORD;
    avg_traffic FLOAT;
BEGIN
    FOR srv IN
        SELECT s.serverid, dc.datacenterid, dc.status,
               AVG(nu.inboundtraffic + nu.outboundtraffic) AS avg_traffic
        FROM servers s
        JOIN datacenters dc ON s.datacenterid = dc.datacenterid
        JOIN networkusage nu ON s.serverid = nu.serverid
        GROUP BY s.serverid, dc.datacenterid, dc.status
    LOOP
        BEGIN
            avg_traffic := srv.avg_traffic;

            -- עומס יתר - רק אם הסטטוס הנוכחי של הדאטה סנטר הוא Active
            IF avg_traffic > 800 AND srv.status = 'Active' THEN
                UPDATE datacenters
                SET status = 'Overloaded'
                WHERE datacenterid = srv.datacenterid;

                RAISE NOTICE 'DataCenter % marked as Overloaded due to server % with avg traffic % Mbps.', srv.datacenterid, srv.serverid, avg_traffic;

            -- חזרה למצב תקין - אם הדאטה סנטר היה Overloaded וחזר לנורמלי
            ELSIF avg_traffic <= 800 AND srv.status = 'Overloaded' THEN
                UPDATE datacenters
                SET status = 'Active'
                WHERE datacenterid = srv.datacenterid;

                RAISE NOTICE 'DataCenter % status returned to Active - traffic normalized (server %).', srv.datacenterid, srv.serverid;

            END IF;

        EXCEPTION WHEN OTHERS THEN
            RAISE NOTICE 'Error processing server % in DataCenter %: %', srv.serverid, srv.datacenterid, SQLERRM;
        END;
    END LOOP;
END;
$BODY$;
ALTER PROCEDURE public.pr_monitor_extreme_traffic()
    OWNER TO myuser;