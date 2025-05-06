-- Insert sample data into DataCenters
INSERT INTO DataCenters (DataCenterID, Name, Country, City, Capacity, Status, EstablishedOn) VALUES
(1, 'Frankfurt DC', 'Germany', 'Frankfurt', 500, 'Active', '2015-06-12'),
(2, 'New York DC', 'USA', 'New York', 1000, 'Active', '2012-03-25'),
(3, 'Tokyo DC', 'Japan', 'Tokyo', 750, 'Maintenance', '2018-09-18');

-- Insert sample data into Servers
INSERT INTO Servers (ServerID, Location, IPAddress, Status, CPUCores, RAM, Storage, LastUpdated, DataCenterID) VALUES
(1, 'Frankfurt', '192.168.1.1', 'Active', 16, 64, 2000, '2025-03-01 120000', 1),
(2, 'New York', '192.168.1.2', 'Active', 32, 128, 4000, '2025-03-01 123000', 2),
(3, 'Tokyo', '192.168.1.3', 'Inactive', 8, 32, 1000, '2025-02-28 154500', 3);

-- Insert sample data into StreamingSessions
INSERT INTO StreamingSessions (SessionID, UserID, ServerID, StartTime, EndTime, DeviceType, VideoQuality, BufferEvents) VALUES
(1, 1001, 1, '2025-03-10 180000', '2025-03-10 193000', 'Smart TV', '4K', 2),
(2, 1002, 2, '2025-03-10 201500', '2025-03-10 210000', 'Laptop', 'HD', 1),
(3, 1003, 3, '2025-03-10 220000', '2025-03-10 234500', 'Phone', 'SD', 3);

-- Insert sample data into ErrorLogs
INSERT INTO ErrorLogs (ErrorID, Timestamp, ServerID, ErrorCode, Severity, Description, AffectedUsers) VALUES
(1, '2025-03-10 142500', 1, '500', 'High', 'Server crash due to overload', 1000),
(2, '2025-03-10 151000', 2, '404', 'Medium', 'Content not found error', 500),
(3, '2025-03-10 164500', 3, '503', 'Low', 'Service temporarily unavailable', 200);

-- Insert sample data into NetworkUsage
INSERT INTO NetworkUsage (RecordID, ServerID, Timestamp, InboundTraffic, OutboundTraffic, AverageLatency, PacketLoss) VALUES
(1, 1, '2025-03-10 120000', 120.5, 300.8, 15.2, 0.2),
(2, 2, '2025-03-10 120500', 98.3, 250.1, 18.7, 0.1),
(3, 3, '2025-03-10 121000', 140.2, 310.4, 12.5, 0.3);

-- Insert sample data into MaintenanceRecords
INSERT INTO MaintenanceRecords (RecordID, ServerID, MaintenanceType, PerformedBy, DatePerformed, DowntimeMinutes, Notes) VALUES
(1, 1, 'Software Update', 'Admin1', '2025-03-05', 30, 'Updated OS to latest version'),
(2, 2, 'Hardware Upgrade', 'TechnicianA', '2025-03-07', 90, 'Replaced faulty RAM modules'),
(3, 3, 'Cleaning', 'Auto-System', '2025-03-09', 15, 'Dust removal and fan check');