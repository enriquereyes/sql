-- Kill active connections
USE master;
GO
ALTER DATABASE REPRO
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
ALTER DATABASE REPRO
SET MULTI_USER;
GO