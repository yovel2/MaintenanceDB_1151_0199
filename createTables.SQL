CREATE TABLE DataCenters (
    DataCenterID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Country TEXT NOT NULL,
    City TEXT NOT NULL,
    Capacity INTEGER NOT NULL,
    Status TEXT CHECK (Status IN ('Active', 'Maintenance', 'Shutdown')),
    EstablishedOn DATE
);

CREATE TABLE Servers (
    ServerID INTEGER PRIMARY KEY,
    Location TEXT NOT NULL,
    IPAddress TEXT NOT NULL UNIQUE,
    Status TEXT CHECK (Status IN ('Active', 'Inactive', 'Maintenance')),
    CPUCores INTEGER NOT NULL,
    RAM INTEGER NOT NULL,
    Storage INTEGER NOT NULL,
    LastUpdated DATETIME,
    DataCenterID INTEGER,
    FOREIGN KEY (DataCenterID) REFERENCES DataCenters(DataCenterID)
);

CREATE TABLE StreamingSessions (
    SessionID INTEGER PRIMARY KEY,
    UserID INTEGER NOT NULL,
    ServerID INTEGER,
    StartTime DATETIME NOT NULL,
    EndTime DATETIME,
    DeviceType TEXT NOT NULL,
    VideoQuality TEXT CHECK (VideoQuality IN ('SD', 'HD', '4K')),
    BufferEvents INTEGER,
    FOREIGN KEY (ServerID) REFERENCES Servers(ServerID)
);

CREATE TABLE ErrorLogs (
    ErrorID INTEGER PRIMARY KEY,
    Timestamp DATETIME NOT NULL,
    ServerID INTEGER,
    ErrorCode TEXT NOT NULL,
    Severity TEXT CHECK (Severity IN ('Low', 'Medium', 'High')),
    Description TEXT,
    AffectedUsers INTEGER,
    FOREIGN KEY (ServerID) REFERENCES Servers(ServerID)
);

CREATE TABLE NetworkUsage (
    RecordID INTEGER PRIMARY KEY,
    ServerID INTEGER,
    Timestamp DATETIME NOT NULL,
    InboundTraffic FLOAT NOT NULL,
    OutboundTraffic FLOAT NOT NULL,
    AverageLatency FLOAT,
    PacketLoss FLOAT,
    FOREIGN KEY (ServerID) REFERENCES Servers(ServerID)
);

CREATE TABLE MaintenanceRecords (
    RecordID INTEGER PRIMARY KEY,
    ServerID INTEGER,
    MaintenanceType TEXT NOT NULL,
    PerformedBy TEXT,
    DatePerformed DATE NOT NULL,
    DowntimeMinutes INTEGER,
    Notes TEXT,
    FOREIGN KEY (ServerID) REFERENCES Servers(ServerID)
);
