SELECT *
FROM aluno;
INSERT into aluno(nome, email, endereco)
VALUES (
        'Antônio',
        'antonio@gmail.com',
        'Rua Antonio, 345'
    ),
    ('João', 'joao@gmail.com', 'Rua Vinte, 455');
delete from aluno
where aluno_id = 11;
CREATE table professor(
    id_professor serial primary key,
    nome_professor varchar (20) not null,
    endereco_prof varchar (30) not null
);
INSERT into professor(nome_professor, endereco_prof)
VALUES ('Márcio Mendes', 'Rua Pinhal, 45'),
    ('Anderson Farias', 'Rua Tupy, 02'),
    ('Betina Marques', 'Rua Brasil, 554');
SELECT *
FROM professor;
CREATE table disciplina(
    id_disciplina serial primary key,
    nome_disciplina varchar (20) not null
);
INSERT into disciplina(nome_disciplina)
VALUES ('Português'),
    ('Matemática'),
    ('Física');