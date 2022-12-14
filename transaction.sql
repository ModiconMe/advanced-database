-- Transaction

-- Transaction isn't closed
BEGIN;
UPDATE accounts
SET balance = balance - 200
WHERE id = 1;

UPDATE accounts
SET balance = balance + 200
WHERE id = 2;
-- ------------------------------

-- Commit changes
BEGIN;
UPDATE accounts
SET balance = balance - 200
WHERE id = 1;

UPDATE accounts
SET balance = balance + 200
WHERE id = 2;
COMMIT;
-- ------------------------------

-- Rollback changes
BEGIN;
UPDATE accounts
SET balance = balance - 200
WHERE id = 1;

UPDATE accounts
SET balance = balance + 200
WHERE id = 2;
ROLLBACK;
-- ------------------------------

-- Nested transactions (inner transaction is visible by outer transaction)
BEGIN;

BEGIN;
UPDATE accounts
SET balance = balance - 200
WHERE id = 1;
COMMIT;

BEGIN;
UPDATE accounts
SET balance = balance + 200
WHERE id = 2;
ROLLBACK;

COMMIT;
-- ------------------------------