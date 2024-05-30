create procedure GetZip
@LastName varchar(15),
@Zip int out
as 
begin 
select @Zip=count(FirstName) from ContactTable where LastName=@LastName;
end

declare @ZipCount int
Execute GetZip 'goyal', @ZipCount output 
Print @ZipCount