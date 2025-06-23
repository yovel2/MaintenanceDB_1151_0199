DO $$
DECLARE
    upgraded_servers_count INT;
BEGIN
    RAISE NOTICE '🔧 התחלת שדרוג שרתים בעלי ביצועים נמוכים';

    -- קריאה לפונקציה שמחזירה את מספר השרתים ששודרגו
    upgraded_servers_count := fn_upgrade_low_performance_servers();

    IF upgraded_servers_count >= 0 THEN
        RAISE NOTICE '✅ סיום שדרוג: % שרתים שודרגו', upgraded_servers_count;
    ELSE
        RAISE NOTICE '⚠️ קרתה שגיאה בשדרוג השרתים';
    END IF;

    RAISE NOTICE '📡 התחלת ניטור תעבורת קצה';

    -- קריאה לפרוצדורה לניטור תעבורה
    CALL pr_monitor_extreme_traffic();

    RAISE NOTICE '✅ סיום ניטור תעבורת קצה';
END;
$$ LANGUAGE plpgsql;