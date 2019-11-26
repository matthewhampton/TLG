Import-Module SqlServer
Invoke-Sqlcmd -QUERY "CREATE DATABASE j5"
Invoke-Sqlcmd -InputFile "create-j5-db.sql"