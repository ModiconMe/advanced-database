### SCHEMAS
Каждая база данных может иметь несколько схем, а схемы в свою очередь содержат
таблицы\
** psql `\dn` - все схемы\
** `SELECT current_schema();` - функция которая возвращает текущую схему
***
**Создать схему:**\
`CREATE SCHEMA schema_name;`\
`CREATE SCHEMA sales;`\
`CREATE SCHEMA engineers;`\
`CREATE SCHEMA marketing;`

**Посмотреть таблицы схемы:**\
`\dt schema.*`

**Создать таблицу в конкретной схеме:**\
`CREATE TABLE schema.table();`

**Для того, чтобы искать по таблицам в других схемах без указания имени схемы, 
нужно установить search_path (sales.people -> people):**\
`SET search_path TO sales, public;`

**Посмотреть search_path:**\
`SHOW search_path;`

**Роли в конкретной схеме:**\
`GRANT USAGE ON SCHEMA sales TO maria;`\
Теперь у пользователя maria есть доступ к схеме sales, но нет привилегий.\
`GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA sales TO maria;`