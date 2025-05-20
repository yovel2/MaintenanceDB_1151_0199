--UPDATE1

UPDATE Servers
SET Status = 'פעיל'
WHERE ServerID = 12;

--UPDATE2
UPDATE ErrorLogs
SET Severity = 'High'
WHERE ErrorCode = 'ERR502' AND Severity = 'Medium';


--UPDATE3

UPDATE StreamingPackages
SET Price = Price * 1.10
WHERE CountryCode = 'US';


--delete1

DELETE FROM MaintenanceRecords
WHERE DatePerformed < DATE('now', '-2 years');

--delete2

DELETE FROM StreamingSessions
WHERE EndTime = StartTime;


--delete3
DELETE FROM Users
WHERE LastLogin IS NULL;

