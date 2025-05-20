--QUERY1

SELECT 
    S.Location,
    COUNT(E.ErrorID) AS TotalErrors,
    ROUND(AVG(E.AffectedUsers), 1) AS AvgAffectedUsers
FROM 
    ErrorLogs E
JOIN 
    Servers S ON E.ServerID = S.ServerID
GROUP BY 
    S.Location
ORDER BY 
    TotalErrors DESC;

--QUERY2	

SELECT 
    SS.DeviceType,
    ROUND(AVG(NU.AverageLatency), 2) AS AvgLatency,
    ROUND(AVG(NU.PacketLoss), 2) AS AvgPacketLoss
FROM 
    StreamingSessions SS
JOIN 
    NetworkUsage NU ON SS.ServerID = NU.ServerID
WHERE 
    NU.Timestamp BETWEEN SS.StartTime AND SS.EndTime
GROUP BY 
    SS.DeviceType
ORDER BY 
    AvgLatency DESC;



--QUERY3	

SELECT 
    S.ServerID,
    S.Location,
    COUNT(SS.SessionID) AS SessionCount
FROM 
    Servers S
JOIN 
    StreamingSessions SS ON S.ServerID = SS.ServerID
WHERE 
    S.Status = 'פעיל'
    AND SS.StartTime >= DATE('now', '-7 days')
GROUP BY 
    S.ServerID, S.Location
HAVING 
    COUNT(SS.SessionID) > 100
ORDER BY 
    SessionCount DESC;



--QUERY4

SELECT 
    VideoQuality,
    COUNT(SessionID) AS BufferingSessions
FROM 
    StreamingSessions
WHERE 
    BufferEvents > 3
GROUP BY 
    VideoQuality
ORDER BY 
    BufferingSessions DESC;



--QUERY5

SELECT 
    S.ServerID,
    S.Location,
    E.Timestamp,
    E.ErrorCode,
    E.Severity
FROM 
    ErrorLogs E
JOIN 
    Servers S ON E.ServerID = S.ServerID
WHERE 
    S.Status = 'פעיל' AND E.Severity = 'High'
ORDER BY 
    E.Timestamp DESC;



--QUERY6

SELECT 
    Status,
    COUNT(ServerID) AS ServerCount,
    SUM(RAM) AS TotalRAM,
    SUM(Storage) AS TotalStorage
FROM 
    Servers
GROUP BY 
    Status;



--QUERY7	

SELECT 
    DATE(Timestamp) AS LogDate,
    ROUND(AVG(InboundTraffic), 2) AS AvgInbound,
    ROUND(AVG(OutboundTraffic), 2) AS AvgOutbound
FROM 
    NetworkUsage
WHERE 
    Timestamp >= DATE('now', '-30 days')
GROUP BY 
    DATE(Timestamp)
ORDER BY 
    LogDate DESC;


--QUERY8

SELECT 
    S.ServerID,
    S.Location,
    COUNT(M.RecordID) AS MaintenanceCount
FROM 
    MaintenanceRecords M
JOIN 
    Servers S ON M.ServerID = S.ServerID
WHERE 
    M.DatePerformed >= DATE('now', '-1 year')
GROUP BY 
    S.ServerID, S.Location
ORDER BY 
    MaintenanceCount DESC
LIMIT 5;
