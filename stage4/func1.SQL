-- FUNCTION: public.fn_fire_lazy_agents()

-- DROP FUNCTION IF EXISTS public.fn_fire_lazy_agents();

CREATE OR REPLACE FUNCTION public.fn_fire_lazy_agents(
  )
    RETURNS TABLE(worker_id integer, worker_name text, avg_response numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
    lazy_agent RECORD;
    lazy_agents CURSOR FOR
        SELECT sr.worker_id, 
               w.worker_name,
               ROUND(AVG(sr.response_date - st.ticket_date)::NUMERIC, 2) AS avg_response
        FROM support_responses sr
        JOIN support_tickets st ON sr.ticket_id = st.ticket_id
        JOIN worker w ON sr.worker_id = w.worker_id
        GROUP BY sr.worker_id, w.worker_name
        HAVING AVG(sr.response_date - st.ticket_date) > 105;
BEGIN
    OPEN lazy_agents;

    LOOP
        FETCH lazy_agents INTO lazy_agent;
        EXIT WHEN NOT FOUND;

        RAISE NOTICE 'Firing agent % (%), avg response %', 
                     lazy_agent.worker_id, lazy_agent.worker_name, lazy_agent.avg_response;

        DELETE FROM worker
        WHERE worker_id = lazy_agent.worker_id;

        -- החזרת ערכים לתוצאה
        worker_id := lazy_agent.worker_id;
        worker_name := lazy_agent.worker_name;
        avg_response := lazy_agent.avg_response;
        RETURN NEXT;
    END LOOP;

    CLOSE lazy_agents;
END;
$BODY$;

ALTER FUNCTION public.fn_fire_lazy_agents()
    OWNER TO myuser;