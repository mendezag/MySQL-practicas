#drop database if exists curso_sql;
show databases;
create database if not exists curso_sql;
use curso_sql;
#CREAMOS LAS TABLAS
create table if not exists usuario(
nombre varchar(50),
apellido varchar(50),
correo varchar(100),
primary key(nombre)
);
describe usuario;
#AGREGAMOS VALORES
insert into usuario values('Agustin','Mendez','agustinmendez.am2@hotmail.com');
insert into usuario values('Marisa','Nuñez','marisadelvalle169@gmail.com');
#Creamos otra tabla
create table if not exists productos(
id int(11) auto_increment,
producto varchar(50),
descripcion text,
precio float(11,2),
primary key(id)

);
insert into productos values(null,'Notebook','Notebook dell inspiron',10900);
insert into productos values(null,'Mouse','Mouse inalambrico NETMARK',300);
insert into productos values(null,'Teclado','Teclado gaming',1100);
select * from productos;
#TRABAJAMOS CON TRUNCATE
truncate table productos;