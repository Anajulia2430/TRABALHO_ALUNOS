create database senai_bp;

use senai_bp;

create table cursos (
cod_curso INT,
nome_curso VARCHAR(100),
PRIMARY KEY (cod_curso)
);

create table alunos (
cod_aluno INT,
nome VARCHAR(45),
sobrenome VARCHAR(45),
data_nascimento DATE,
cod_curso INT,
PRIMARY KEY (cod_aluno),
FOREIGN KEY (cod_curso)
references cursos (cod_curso)
);

INSERT INTO cursos VALUES(101, "Introdução ao Desenvolvimento de Projetos");
INSERT INTO cursos VALUES(102, "Inglês Técnico Aplicado ao Desenvolvimento de Sistemas");
INSERT INTO cursos VALUES(103, "Higiene do Alimento:Microbiologia de Alimentos");
INSERT INTO cursos VALUES(104, "Ferramentas Digitais de Gestão");
INSERT INTO cursos VALUES(105, "Introdução a IOT para Manutenção Industrial");
INSERT INTO cursos VALUES(106, "Introdução a Indústria 4.0");
INSERT INTO cursos VALUES(107, "Administrador de Banco de Dados");

INSERT INTO alunos VALUES(1100, "Ana Julia", "Almeida Ottoni", "2006-08-24", "107");

select * from alunos where data_nascimento>='1999-01-01' order by data_nascimento;

SELECT count(*) from alunos group by data_nascimento=2005;

select count(*) from cursos;

select c.cod_curso, c.nome_curso,
count(a.cod_curso) as alunos
from alunos a
inner join cursos c on c.cod_curso=a.cod_curso
group by c.cod_curso;
 

select a.cod_aluno, concat ( a.nome, ' ', a.sobrenome ) as 'Nome Completo', c.cod_curso
from alunos a
inner join cursos c on c.cod_curso = a.cod_curso
where c.cod_curso = 106;












