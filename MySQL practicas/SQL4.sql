drop database if exists curso_sql;

create database if not exists curso_sql;
use curso_sql;

create table if not exists productos(
id integer unsigned not null auto_increment,
nombre varchar(50),
proveedor varchar(50),
descripcion text,
precio decimal(5,2) unsigned,
cantidad smallint unsigned,
primary key(id)
);

insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Laptop HP','HP','Las mejores laptop',155.69,50);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Mouse','Logitech','Las mejores mouse',20.86,30);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Teclado','Logitech','Las mejores teclados',80.12,100);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Laptop DELL','Dell','Las mejores laptop',200.8,15);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Pantalla','HP','Las mejores Pantallas',155.69,50);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Impresora','HP','Las mejores Impresoras',155,70);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Camaras','logitech','Las mejores Camaras',500,20);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Xbox 360','Xbox Microsoft','Las mejores Consolas',103,10);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('PlayStation 4','Sony','Las mejores play',15.69,50);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Lenovo 310','Lenovo','Las mejores laptop',155.69,50);

select nombre, precio, cantidad from productos;
#HACEMOS USO DE LA "COLUMNA CALCULADA"
select nombre, precio*cantidad from productos;
select nombre, precio,precio*0.1,precio-(precio*0.1) from productos;

#Funciones de manejo de cadenas
select concat('Hola,',' ','como estas?');
select concat_ws('/','Miguel','Lopez','Martinez');
select length('Hola a todos');
select left('Buenas Noches',8);
select right('Buenas Tardes',10);
select ltrim('        Udemy     ');
select rtrim('      Udemy    ');
select trim('    Udemy    ');
select replace('xxx.udemy.com','x','w');

select concat_ws('#',nombre,precio) from productos;

#Funciones Matematicas
select nombre, precio from productos;
select ceiling(precio) from productos;
select floor(precio) from productos;
select mod(10, 3);
select mod(10, 2);
select power(2,3);
select round(20.60);
select round(20.12);

#ORDER BY
select nombre, precio from productos order by nombre;
select nombre, precio from productos order by precio desc;
select nombre, precio from productos order by nombre desc, precio asc;

#OPERADIRES LOGICOS (AND OR XOR NOT)
select * from productos where (precio <= 200) and (proveedor = 'HP');
select * from productos where (proveedor = 'HP') or (descripcion = 'la mejor laptop'); 
select * from productos where not (proveedor = 'logitech'); 
select * from productos where (proveedor = 'HP') xor (precio <=200);

#OPERADORES RELACIONALES (BETWEEN-IN)

select * from productos where precio between 100 and 160;
select * from productos where descripcion in ('HP', 'la mejor laptop');

#TRABAJAMOS CON LIKE Y NO LIKE 

select * from productos where descripcion like '%laptop%';
select * from productos where descripcion not like '%laptop%';

#TRABAJAMOS CON EL PATRON DE BUSQUEDA REGEXP

select * from productos where descripcion regexp'[h i]';
select * from productos where descripcion regexp'[a-d]';

#USAMOS LA FUNCION COUNT 

select count(*) from productos;
select count(*) from productos where proveedor = 'HP';
select count(*) from productos where proveedor like '&laptop%';

#=====================================================================

create table visitantes(
  nombre varchar(30),
  edad tinyint unsigned,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11),
  montocompra decimal (6,2) unsigned
 );

insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Susana Molina', 28,'f','Colon 123','Cordoba',null,45.50); 
insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',0);
insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Teresa Garcia',33,'f','Gral. Paz 123','Alta Gracia','03547123456',0);
insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',25);
insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia','03547121212',53.50);
insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Roxana Lopez',20,'f','Triunvirato 345','Alta Gracia',null,0);
insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Juan Torres',43,'m','Sarmiento 876','Cordoba','4988778',15.30);
  
select * from visitantes;
select count(*) from visitantes where ciudad='Cordoba';
select count(*) from visitantes where ciudad = 'Alta Gracia';

select ciudad, count(*) from visitantes group by ciudad;

select sexo, sum(montocompra) from visitantes group by sexo;

select sexo, max(montocompra), min(montocompra) from visitantes group by sexo;

select ciudad, sexo, count(*) from visitantes group by ciudad, sexo;

select ciudad, count(*) from visitantes where ciudad<>'Cordoba' group by ciudad;

select ciudad, count(*) from visitantes group by ciudad asc;


#registros duplicados distinct

select * from productos;
select proveedor from productos;
select distinct proveedor from productos;

select distinct proveedor from productos group by proveedor asc;

