-- Drop tables in the correct order to avoid foreign key constraints issues
DROP TABLE IF EXISTS MaintenanceRecords;
DROP TABLE IF EXISTS NetworkUsage;
DROP TABLE IF EXISTS ErrorLogs;
DROP TABLE IF EXISTS StreamingSessions;
DROP TABLE IF EXISTS Servers;
DROP TABLE IF EXISTS DataCenters;
