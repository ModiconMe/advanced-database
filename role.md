### ROLES
У нас могут быть определены разные роли в базе данных (user = role), каждый user имеет какие то привелегии.
** посмотреть все роли в psql `\du`

**Получить все роли:**\
`SELECT rolname FROM pg_roles;`

**Создать роль** (нужно залогиниться под ролью, которая умеет создавать роли (Create role)):\
`CREATE ROLE role_name WITH LOGIN PASSWORD 'password';`\
Можно создать юзера - это будет эквивалентно роли с логином и паролем (строчка выше)\
`CREATE USER user_name;`\
`CREATE ROLE role_name WITH SUPERUSER LOGIN PASSWORD 'password';`\

**Удалить роль:**\
`DROP ROLE IF EXISTS role_name;`

**Выдача привилегий другим ролям (нужно быть SUPERUSER):**\
`GRANT SELECT ON people TO maria;`\
Теперь пользователь maria может делать SELECT из таблицы people.\

`GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO maria;`\
Теперь пользователь maria может делать все действия со всеми таблицами
из схемы public.

**Забрать привилегий(нужно быть SUPERUSER):**\
`REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM maria;`\

**Создать group of roles(нужно быть SUPERUSER):**\
`CREATE USER engineers;`\
`GRANT engineers TO maria;`\
Maria теперь относиться к группе ролей engineers.\
`REVOKE engineers FROM maria;`\