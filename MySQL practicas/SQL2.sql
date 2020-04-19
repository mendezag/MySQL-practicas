#CREAMOS LA TABLA
create table Alumnos(
Nombre varchar(50),
Apellido varchar(50),
Edad int(3),
Direccion  varchar(50),
Telefono varchar(20)
);
#TRABAHAMOS CON INSERT INTO 
insert into alumnos(Nombre,Apellido,Edad,Direccion,Telefono) values('Agustin','Mendez','25','Olof palme','1150413098');
insert into alumnos values('Marisa','Nuñez','42','schubert','1121303443');
insert into alumnos values('Carlos','Rotella','50','Schubert','1121345678');
insert into alumnos values('Marisa','Maidana','28','schubert','1121303443');
insert into alumnos values('Susana','Rotella','12','Schubert','1145653223');
insert into alumnos values('lola','Rotella','7', 'Schubert', '12345678');

#TRABAJAMOS CON SELECT
select * from alumnos;
select Nombre,Edad from alumnos;
#TRABAJAMOS CON WHERE
select * from alumnos where Nombre = 'Marisa';
select Nombre,Edad from alumnos where Nombre = 'Marisa';
#TRABAJAMOS CON OPERADORES RELACIONALES
#IGUAL =, DIFERENTE <>, MENOR <, MAYOR >, MENOR O IGUAL QUE <, MAYOR O IGUAL QUE >
select * from alumnos where nombre = 'marisa';
select * from alumnos where nombre <> 'marisa';
select Nombre, Apellido from alumnos where edad > 26;
select * from alumnos where edad < 20;
select * from alumnos where edad <= 25;
select Telefono, Edad from alumnos where edad >= 25;
#TRABAJAMOS CON DELETE 
delete from alumnos;
delete from alumnos where Nombre = 'Marisa';
#TRABAJAMOS CON UPDATE 
update alumnos set edad = '13' where Nombre = 'Susana';
update alumnos set Direccion = 'Monseñor Marcon', Edad = '12' where Nombre = 'Susana';


