
USE j5;

CREATE LOGIN [EXAMPLE\j5-application-user] FROM WINDOWS;

CREATE USER [j5-application-user] FOR LOGIN [EXAMPLE\j5-application-user];

ALTER ROLE db_owner ADD MEMBER [j5-application-user] ;

ALTER USER [j5-application-user] WITH DEFAULT_SCHEMA=dbo
;


