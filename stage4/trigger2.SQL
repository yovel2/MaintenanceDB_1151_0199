CREATE OR REPLACE FUNCTION fn_trigger_upgrade_servers()
RETURNS TRIGGER AS $$
BEGIN
    PERFORM fn_upgrade_low_performance_servers();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_upgrade_servers_after_maintenance
AFTER INSERT ON maintenancerecords
FOR EACH ROW
EXECUTE FUNCTION fn_trigger_upgrade_servers();
