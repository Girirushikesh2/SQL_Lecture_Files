use  Subquery
BEGIN TRY
DECLARE @num INT, @msg varchar(200)
SET @num = 6/0
PRINT 'This is not possible: Will raise divide by zero'
END TRY 

BEGIN CATCH
PRINT 'Error occur, dont try to divide a number by zero'
SET @msg = ( SELECT ERROR_MESSAGE())
PRINT @msg ;
END CATCH
Go