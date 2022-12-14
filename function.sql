-- template for function
CREATE OR REPLACE FUNCTION function_name(p1 INT, p2 TEXT)
RETURNS INT
LANGUAGE plpgsql
AS
	$$
	DECLARE
		-- variable declaration
		a int;

		BEGIN
		-- logic
		END;
	$$

-- actual function
CREATE OR REPLACE FUNCTION count_by_first_name(p_first_name TEXT)
RETURNS INT
LANGUAGE plpgsql
AS
	$$
	DECLARE
		-- variable declaration
		total int;

		BEGIN
		-- logic
		SELECT COUNT(*)
		INTO total
		FROM people
		WHERE first_name = p_first_name;

		RETURN total;
		END;
	$$

-- call function
SELECT count_by_first_name('Jesus');

-- \df - check all function in psql

-- drop function
DROP FUNCTION function_name;