CREATE TRIGGER trg_AfterInsert_Contact
ON ContactTable
AFTER INSERT
AS
BEGIN
    DECLARE @FirstName VARCHAR(50);
    DECLARE @LastName VARCHAR(15);

    SELECT @FirstName = FirstName, @LastName = LastName
    FROM inserted;

    INSERT INTO ContactLog (LogMessage, LogDate)
    VALUES (CONCAT('Inserted contact: ', @FirstName, ' ', @LastName), GETDATE());
END;
