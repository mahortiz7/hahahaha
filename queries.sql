Create table Alunos (
idAluno int not null auto_increment primary key,
nome char (40) not null,
idade int not null,
curso varchar(30) not null,
serie int not null
);

show tables;
-- +----------------------------------+
-- | Tables_in_sandbox_db |
-- +----------------------------------+
-- | alunos                           |
-- +----------------------------------+




alter table Alunos add cpf char (12) not null;

desc Alunos;

Alter table Alunos drop cpf;

desc Alunos;

-- +---------+-------------+------+-----+---------+----------------+
-- | Field   | Type        | Null | Key | Default | Extra          |
-- +---------+-------------+------+-----+---------+----------------+
-- | idAluno | int         | NO   | PRI | NULL    | auto_increment |
-- | nome    | char(40)    | NO   |     | NULL    |                |
-- | idade   | int         | NO   |     | NULL    |                |
-- | curso   | varchar(30) | NO   |     | NULL    |                |
-- | serie   | int         | NO   |     | NULL    |                |
-- | cpf     | char(12)    | NO   |     | NULL    |                |
-- +---------+-------------+------+-----+---------+----------------+

Insert into Alunos (nome, idade, curso, serie) values ("Gabrielly", 17, "Des. Sistemas", 2),
("Maria Eduarda",17, "Des. Sistemas",2), (" Kauã",18, "Des. Sistemas",3), (" Murilo",17, "Des. Sistemas",3);

select * from Alunos;

Select * from Alunos order by nome;
-- +---------+---------------+-------+---------------+-------+
-- | idAluno | nome          | idade | curso         | serie |
-- +---------+---------------+-------+---------------+-------+
-- |       1 | Gabrielly     |    17 | Des. Sistemas |     2 |
-- |       2 | Maria Eduarda |    17 | Des. Sistemas |     2 |
-- |       3 |  Kauã         |    18 | Des. Sistemas |     3 |
-- |       4 |  Murilo       |    17 | Des. Sistemas |     3 |
-- +---------+---------------+-------+---------------+-------+

Select * from Alunos order by nome desc;

-- +---------+---------------+-------+---------------+-------+
-- | idAluno | nome          | idade | curso         | serie |
-- +---------+---------------+-------+---------------+-------+
-- |       3 |  Kauã         |    18 | Des. Sistemas |     3 |
-- |       4 |  Murilo       |    17 | Des. Sistemas |     3 |
-- |       1 | Gabrielly     |    17 | Des. Sistemas |     2 |
-- |       2 | Maria Eduarda |    17 | Des. Sistemas |     2 |
-- +---------+---------------+-------+---------------+-------+

Select * from  Alunos order by nome, serie;

-- +---------+---------------+-------+---------------+-------+
-- | idAluno | nome          | idade | curso         | serie |
-- +---------+---------------+-------+---------------+-------+
-- |       3 |  Kauã         |    18 | Des. Sistemas |     3 |
-- |       4 |  Murilo       |    17 | Des. Sistemas |     3 |
-- |       1 | Gabrielly     |    17 | Des. Sistemas |     2 |
-- |       2 | Maria Eduarda |    17 | Des. Sistemas |     2 |
-- +---------+---------------+-------+---------------+-------+



update alunos set nome='Cauã' where idAluno=3;
select nome from alunos;
-- +--------------- --+
-- | nome       --   |
-- +-------------- ---+
-- | Gabrielly --     |
-- | Maria Edu-- arda |
-- | Cauã   --        |
-- |  Murilo       |
-- +---------------+


update Alunos set nome= 'Cauã', serie=3 where idAluno=3 ;
select nome, serie from Alunos;
-- +---------+---------------+-------+---------------+-------+
-- | idAluno | nome          | idade | curso         | serie |
-- +---------+---------------+-------+---------------+-------+
-- |       3 |  Kauã         |    18 | Des. Sistemas |     3 |
-- |       4 |  Murilo       |    17 | Des. Sistemas |     3 |
-- |       1 | Gabrielly     |    17 | Des. Sistemas |     2 |
-- |       2 | Maria Eduarda |    17 | Des. Sistemas |     2 |
-- +---------+---------------+-------+---------------+-------+

delete from Alunos where idAluno=3;
select nome from Alunos;

-- +---------------+
--| nome          |
-- +---------------+
-- | Gabrielly     |
-- | Maria Eduarda |
-- |  Murilo       |
-- +---------------+