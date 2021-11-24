use  Subquery
BEGIN TRY
DECLARE @num INT, @msg varchar(200)
SET @num = 5/0
PRINT 'This is not possible: Will raise divide by zero'
END TRY 

BEGIN CATCH
PRINT 'Error occur, dont try to divide a number by zero'
SELECT ERROR_NUMBER () AS ErrorNumber, ERROR_SEVERITY() AS ErrorSeverity,
ERROR_STATE() AS ErrorState, ERROR_PROCEDURE() AS ErrorProcedure,ERROR_LINE() AS ErrorLine,
ERROR_MESSAGE() AS Errormessage;
END CATCH
Go