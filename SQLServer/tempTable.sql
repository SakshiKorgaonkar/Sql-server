CREATE TABLE ContactLog (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    LogMessage VARCHAR(255),
    LogDate DATETIME
);

