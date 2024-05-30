create function GetNumber(@LastName varchar(15))
returns varchar(10)
as
begin 
DECLARE @Phone VARCHAR(10);
    SELECT @Phone = Phone
    FROM ContactTable
    WHERE LastName = @LastName;
    RETURN @Phone;
end

select dbo.GetNumber('bagave') as PhoneNumber;