drop schema teste;
create schema teste;
use teste;

CREATE TABLE entidade (
idEntidade int auto_increment primary key,
nome varchar(50) DEFAULT NULL,
email varchar(50) DEFAULT NULL,
telefone varchar(50) DEFAULT NULL,
estado varchar(50) DEFAULT NULL,
cidade varchar(50) DEFAULT NULL,
endereco varchar(50)DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



CREATE TABLE item (
idltem int auto_increment primary key,
idEntidade int,
Descricao varchar(1000) DEFAULT NULL,
Quantidade int DEFAULT NULL,
disponivel boolean DEFAULT TRUE,
constraint fk_idEntidade FOREIGN KEY (idEntidade) REFERENCES entidade (idEntidade)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




CREATE TABLE Pessoas(
idPessoa int auto_increment primary key,
nome varchar(50) DEFAULT NULL,
contato varchar(50) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




CREATE TABLE ItensPessoas (
idPessoa int,
Idltem int,
idEntidade int,
Quantidade int not null,
DataHora timestamp,
Descricao varchar(1000) DEFAULT NULL,
constraint fk_idPessoa FOREIGN KEY (idPessoa) REFERENCES pessoas (idPessoa),
constraint fk_idltem FOREIGN KEY (idltem) REFERENCES item (idltem),
constraint fk_idEntidade2 FOREIGN KEY (idEntidade) REFERENCES entidade (idEntidade)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

create table login
(
user varchar(100) not null,
password varchar(100),
nome varchar(100) not null,
ativo boolean


)engine=innodb;

insert into login values ("root", md5(""), "root", true);