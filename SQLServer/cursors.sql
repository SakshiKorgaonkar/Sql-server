DECLARE @LastName varchar(15);
DECLARE @LastUpdated DATETIME;

DECLARE contact_cursor CURSOR FOR
SELECT LastName
FROM ContactTable;

OPEN contact_cursor;

FETCH NEXT FROM contact_cursor INTO @LastName;

WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE ContactTable
    SET LastUpdated = GETDATE()
    WHERE LastName = @LastName;

    FETCH NEXT FROM contact_cursor INTO @LastName;
END;

CLOSE contact_cursor;
DEALLOCATE contact_cursor;