ALTER TABLE support_agent RENAME TO worker;

-- Remove old attribute
ALTER TABLE MaintenanceRecord DROP COLUMN performedBy;

-- Add foreign key relationship
ALTER TABLE MaintenanceRecord ADD COLUMN workerID INT;
ALTER TABLE MaintenanceRecord ADD CONSTRAINT FK_MaintenanceRecord_Worker 
FOREIGN KEY (workerID) REFERENCES worker(workerID);