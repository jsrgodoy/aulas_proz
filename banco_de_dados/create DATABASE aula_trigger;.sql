CREATE DATABASE aula_trigger;
USE aula_trigger;
CREATE TABLE cadastro (
    id SERIAL NOT NULL,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE NOT NULL
    INSERT INTO cadastro (nome, nascimento)
    VALUES ('Jeferson', '1980-05-24'),
        ('Joana', '1998-09-15');
CREATE TABLE lembrete (id INT, mensagem VARCHAR(255));
CREATE TRIGGER verificar_dados BEFORE
INSERT ON cadastro FOR EACH ROW BEGIN IF NEW.nascimento IS NULL THEN
INSERT INTO lembrete (id, mensagem)
VALUES (NEW.id, CONCAT('Oi ', NEW.nome));
END IF;
END;
SHOW TRIGGERS LIKE 'verificar_dados';
INSERT INTO cadastro (nome)
VALUES ('Julio');
ALTER TABLE cadastro
MODIFY COLUMN nascimento DATE NOT NULL;
SELECT *
FROM cadastro;