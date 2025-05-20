BEGIN;

UPDATE StreamingSessions
SET EndTime = StartTime
WHERE EndTime IS NULL;

-- View table state here (after the update)

ROLLBACK;

-- View table state again to confirm rollback



BEGIN;

UPDATE StreamingSessions
SET EndTime = StartTime
WHERE EndTime IS NULL;

-- View table state here (after the update)

COMMIT;

-- View table state again to confirm it stayed
