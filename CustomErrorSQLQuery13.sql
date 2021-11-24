use Subquery
-- Custom eception handling using user raise error
BEGIN
BEGIN TRY
DECLARE @OUTPUT varchar(200);
SELECT @OUTPUT = AGENTS.AGENT_NAME FROM AGENTS WHERE AGENTS.AGENT_NAME='IVAN';
If @OUTPUT IS NULL
BEGIN
	PRINT 'We can NOT find Agent name in our database'
	RAISERROR ('Record not found',11,1);
END
else 
SELECT @OUTPUT AS AGENT
END TRY
BEGIN CATCH
PRINT 'Message from CATCH BLOCK';
END CATCH
END