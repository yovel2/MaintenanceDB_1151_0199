-- PROCEDURE: public.pr_report_traffic_status()

-- DROP PROCEDURE IF EXISTS public.pr_report_traffic_status();

CREATE OR REPLACE PROCEDURE public.pr_report_traffic_status(
  )
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    srv RECORD;
    avg_traffic FLOAT;
BEGIN
    RAISE NOTICE '--- ריכוז מצב התעבורה לפי שרתים ---';

    FOR srv IN
        SELECT s.serverid, s.ipaddress, dc.name AS datacenter_name,
               AVG(nu.inboundtraffic + nu.outboundtraffic) AS avg_traffic
        FROM servers s
        JOIN datacenters dc ON s.datacenterid = dc.datacenterid
        JOIN networkusage nu ON s.serverid = nu.serverid
        GROUP BY s.serverid, s.ipaddress, dc.name
    LOOP
        avg_traffic := srv.avg_traffic;

        IF avg_traffic > 1000 THEN
            RAISE NOTICE '🔴 Server % (% - %): HIGH LOAD (%.2f Mbps)', srv.serverid, srv.ipaddress, srv.datacenter_name, avg_traffic;

        ELSIF avg_traffic < 100 THEN
            RAISE NOTICE '🟡 Server % (% - %): UNDERUTILIZED (%.2f Mbps)', srv.serverid, srv.ipaddress, srv.datacenter_name, avg_traffic;

        ELSE
            RAISE NOTICE '🟢 Server % (% - %): NORMAL TRAFFIC (%.2f Mbps)', srv.serverid, srv.ipaddress, srv.datacenter_name, avg_traffic;
        END IF;

    END LOOP;

    RAISE NOTICE '--- סוף הדוח ---';
END;
$BODY$;
ALTER PROCEDURE public.pr_report_traffic_status()
    OWNER TO myuser;