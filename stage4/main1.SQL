DO $$
DECLARE
    -- משתנים לקליטת תוצאה מהפונקציה
    lazy_agent RECORD;
BEGIN
    RAISE NOTICE '📋 התחלת הרצת פונקציה fn_fire_lazy_agents()';

    -- קריאה לפונקציה שמחזירה טבלה עם רשומות
    FOR lazy_agent IN SELECT * FROM fn_fire_lazy_agents() LOOP
        RAISE NOTICE '💥 פוטר עובד: ID=%, שם=%, זמן תגובה ממוצע=% ימים',
                     lazy_agent.worker_id, lazy_agent.worker_name, lazy_agent.avg_response;
    END LOOP;

    RAISE NOTICE '✅ סיום הרצת הפונקציה';

    RAISE NOTICE '📊 התחלת הרצת פרוצדורה pr_report_traffic_status()';

    -- קריאה לפרוצדורה
    CALL pr_report_traffic_status();

    RAISE NOTICE '✅ סיום הרצת הפרוצדורה';
END;
$$ LANGUAGE plpgsql;