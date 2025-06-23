-- FUNCTION: public.fn_upgrade_low_performance_servers()

-- DROP FUNCTION IF EXISTS public.fn_upgrade_low_performance_servers();

CREATE OR REPLACE FUNCTION public.fn_upgrade_low_performance_servers(
  )
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
    srv RECORD;
    upgraded_count INT := 0;
BEGIN
    FOR srv IN
        SELECT s.serverid
        FROM servers s
        JOIN datacenters dc ON s.datacenterid = dc.datacenterid
        WHERE dc.status = 'Active'
          AND EXISTS (
              SELECT 1
              FROM networkusage nu
              WHERE nu.serverid = s.serverid
                AND (
                    nu.averagelatency > 250   
                    AND nu.packetloss > 4    
                )

          )
    LOOP
        UPDATE servers
        SET ram = (ram * 1.1)::INT
        WHERE serverid = srv.serverid;

        upgraded_count := upgraded_count + 1;
    END LOOP;

    RETURN upgraded_count;

EXCEPTION WHEN OTHERS THEN
    RAISE NOTICE 'Could not upgrade server RAM: %', SQLERRM;
    RETURN -1;
END;
$BODY$;

ALTER FUNCTION public.fn_upgrade_low_performance_servers()
    OWNER TO myuser;