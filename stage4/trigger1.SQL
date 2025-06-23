CREATE OR REPLACE FUNCTION fn_prevent_over_capacity()
RETURNS TRIGGER AS $$
DECLARE
    srv_count INT;
    dc_capacity INT;
BEGIN
    -- בדיקת מספר השרתים הקיימים במרכז הנתונים והקיבולת המוגדרת
    SELECT COUNT(*), dc.capacity
    INTO srv_count, dc_capacity
    FROM servers s
    JOIN datacenters dc ON s.datacenterid = dc.datacenterid
    WHERE s.datacenterid = NEW.datacenterid;

    -- השוואה בין מספר השרתים לקיבולת המותרת
    IF srv_count >= dc_capacity THEN
        RAISE EXCEPTION 'Cannot add server. DataCenter % is at full capacity (% servers).', NEW.datacenterid, dc_capacity;
    END IF;

    -- אין חריגה, אפשר להוסיף את השורה
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_prevent_over_capacity
BEFORE INSERT ON servers
FOR EACH ROW
EXECUTE FUNCTION fn_prevent_over_capacity();
