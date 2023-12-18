CREATE or replace function soma(num1 INT, num2 INT) RETURNS INT AS $$ BEGIN RETURN num1 + num2;
END $$ LANGUAGE PLPGSQL;