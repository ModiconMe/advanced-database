### INDEXES
В базе данных важно иметь индексы на колонки, по которым часто происходит поиск.
Значения в колонке сортируются и появляется возможность использовать более быстрые алгоритмы поиска (например binary search).

НО наличие индекса, увеличивает время вставки новых значений.

**Primary key, unique constraint** колонки имеют индекс из коробки.

**Получить все индексы всех таблиц:**\
`SELECT tablename, indexname, indexdef FROM pg_indexes WHERE schemaname = 'public';`

**Создать индекс для одной колонки:**\
`CREATE INDEX index_name ON table(column);`\
`CREATE INDEX account_balance_idx ON accounts(balance);`\
`CREATE UNIQUE INDEX account_balance_idx ON accounts(balance);`

Индекс по нескольким колонкам (А и Б) работает когда мы ищем либо по колонкам А и Б,
либо А, но не только Б.\
**Создать индекс для нескольких колонок:**\
`CREATE INDEX account_balance_idx ON accounts(balance);`

**Удалить индекс:**\
`DROP INDEX index_name;`\
`DROP INDEX account_balance_idx;`

