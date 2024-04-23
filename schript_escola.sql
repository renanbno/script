-- apagar databae caso exista
drop database if exists escola;


-- criar base de dados
create database escola;

-- selecionar a base de dados que deseja trabalhar
use escola;

-- criar tabela de alunos

create table alunos (
	id_aluno int not null auto_increment,
	nome varchar (100) not null,
	data_nascimento date,
	endereco varchar(255),
	primary key (id_aluno)
);

-- criar tabela de professores

create table professores (
	id_professor int not null auto_increment,
	nome varchar (100) not null,
	especialidade varchar (100),
	grau_academico varchar(100),
	primary key (id_professor)
);

-- criar tabela disciplina 

create table disciplinas(
id_disciplina int not null unique auto_increment,
nome varchar(45) not null,
id_professor int not null,
primary key (id_disciplina),
foreign key (id_professor)
references professores (id_professor)
);

-- criar tabela notas

create table notas (
id_nota int not null unique auto_increment,
id_aluno int not null,
id_disciplina int not null,
nota decimal(14.2) not null,
primary key (id_nota),
foreign key (id_aluno) references alunos (id_aluno),
foreign key (id_disciplina) references disciplinas (id_disciplina)
);

-- criar tabela matriculas

create table matriculas(
ano int not null,
id_aluno int not null,
id_disciplina int not null,
primary key (ano, id_aluno, id_disciplina),
foreign key (id_aluno) references alunos (id_aluno),
foreign key (id_disciplina) references disciplinas (id_disciplina)
);






























