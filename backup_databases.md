### BACKUP DATABASES

**Help**:\
`pg_dump --help`
`pg_dumpall --help`

**Бэкап базы данных в .tar или .sql**\
`pg_dump -U postgres -F p database_name > database-backup.sql;`
`pg_dump -U postgres -F t database_name > database-backup.tar;`

**Восстановление базы данных**\
`psql -U postgres -d new_database -f database_backup.sql;`
`pg_restore -d new_database database_backup.tar;`

**Бэкап всех баз данных в .tar или .sql**\
`pg_dumpall > database-all-backup.sql;`