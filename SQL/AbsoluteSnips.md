
Check Vlog filer om de er fragmenteret
```sql
DBCC LOGINFO
```

Check logfilers lokation og størrelse
```sql
DBCC SQLPERF(logspace)
```

Check hvornår der sidst er taget log backup
```sql
SELECT   d.name,
         MAX(b.backup_finish_date) AS backup_finish_date
FROM     master.sys.sysdatabases d
         LEFT OUTER JOIN msdb..backupset b
         ON       b.database_name = d.name
         AND      b.type          = 'L'
GROUP BY d.name
ORDER BY backup_finish_date DESC
```


Run maintenance
```sql
sqlcmd -E -S XXXServernameXXXX -d master -Q "EXECUTE dbo.IndexOptimize @Databases = 'USER_DATABASES'" -b
```

List instance name - returns servername\instance
```sql
SELECT @@servername
```

List instance name - returns instance
```sql
SELECT @@servicename
```