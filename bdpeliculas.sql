CREATE DATABASE peliculas;
use peliculas;
/*
drop database peliculas;

/*AS DARLE UN NOMBRE A LA COLUMNA GENERADA 
*/
create table cliente
(
	claveCliente int primary key,
    nombreCliente varchar(45),
    apellidoCliente varchar(45)
);

create table pelicula(
claveP varchar(45) primary key,
nombrePelicula varchar(45)
);

create table fechaRenta(
fechaPrestamo date,
fechaDevolucion date,
claveCliente int,
claveP varchar(45) ,
foreign key (claveCliente) references cliente(claveCliente),
foreign key (claveP) references pelicula(claveP)

);

create table genero(
claveGen int primary key,
nombreGen varchar(45)
);


create table productora(
claveProductora int primary key,
nombreProductora varchar(45)
);



/*////////////////////////////*/
create table pertenece(
claveP varchar(45) ,
claveGen int,
foreign key (claveP) references pelicula(claveP),
foreign key (claveGen) references genero(claveGen)
);

create table tener(
claveP varchar(45),
claveProductora int,
foreign key (claveP) references pelicula(claveP),
foreign key (claveProductora) references productora(claveProductora)
);


select * from tener;
select * from productora;
select * from peliculas;

insert into tener(claveP, claveProductora) values ("P10",1);
insert into tener(claveP, claveProductora) values ("P20",2);
insert into tener(claveP, claveProductora) values ("P30",3);
insert into tener(claveP, claveProductora) values ("P30",4);
insert into tener(claveP, claveProductora) values ("P40",1);
insert into tener(claveP, claveProductora) values ("P40",5);



insert into cliente (claveCliente, nombreCliente, apellidoCliente) values(1, "Carmen", "Guzman");
insert into cliente (claveCliente, nombreCliente, apellidoCliente) values(2, "Luis", "Aguilar");
insert into cliente (claveCliente, nombreCliente, apellidoCliente) values(3, "Ubalda", "Moreno");
insert into cliente (claveCliente, nombreCliente, apellidoCliente) values(4, "Cinthya", "Diaz");

insert into pelicula (claveP, nombrePelicula) values ("P10", "Avengers: Infinity War");
insert into pelicula (claveP, nombrePelicula) values ("P20", "Roma");
insert into pelicula (claveP, nombrePelicula) values ("P30", "Los Increibles 2");
insert into pelicula (claveP, nombrePelicula) values ("P40", "Venom");

insert into productora (claveProductora, nombreProductora) values(1, "Marvel Studios");
insert into productora (claveProductora, nombreProductora) values(2, "Participant Media");
insert into productora (claveProductora, nombreProductora) values(3, "Walt Disney picture");
insert into productora (claveProductora, nombreProductora) values(4, "Pixar Animation Studios");
insert into productora (claveProductora, nombreProductora) values(5, "Columbia Picture");

insert into fechaRenta (fechaPrestamo, fechaDevolucion, claveCliente, claveP) values ('2019-02-10',  '2019-02-1', 1, "P10");
insert into fechaRenta (fechaPrestamo, fechaDevolucion, claveCliente, claveP) values ('2019-02-12',  '2019-02-15', 2, "P20");
insert into fechaRenta (fechaPrestamo, fechaDevolucion, claveCliente, claveP) values ('2019-02-12',  '2019-02-15', 3, "P30");
insert into fechaRenta (fechaPrestamo, fechaDevolucion, claveCliente, claveP) values ('2019-02-13',  '2019-02-16', 4, "P40");
insert into fechaRenta (fechaPrestamo, fechaDevolucion, claveCliente, claveP) values ('2019-02-14',  '2019-02-17',1, "P20");
insert into fechaRenta (fechaPrestamo, fechaDevolucion, claveCliente, claveP) values ('2019-02-17',  '2019-02-20', 4, "P30");

select * from fecharenta;
insert into genero (claveGen, nombreGen) values (1, "Ciencia Ficciòn");
insert into genero (claveGen, nombreGen) values (2, "Accion");
insert into genero (claveGen, nombreGen) values (3, "Drama");
insert into genero (claveGen, nombreGen) values (4, "Animacion");


insert into pertenece(claveP, claveGen ) values ("P10",1);
insert into pertenece(claveP, claveGen ) values ("P10",2);
insert into pertenece(claveP, claveGen) values ("P20",3);
insert into pertenece(claveP, claveGen) values ("P30",2);
insert into pertenece(claveP, claveGen) values ("P30",4);
insert into pertenece(claveP, claveGen) values ("P40",1);






select* from pelicula where claveP="P40";
/*select* from fechaRenta where fechaPrestamo='2019-02-12';*/


use peliculas;
select  nombreCliente, apellidoCliente from cliente  INNER JOIN fecharenta WHERE fecharenta.claveP="P40";


select pelicula.nombrePelicula from pelicula INNER JOIN fecharenta on fecharenta.claveP= pelicula.claveP where pelicula.claveP="P40"; 


/*Conocer el nombre de la película con clave P40*/
select nombrePelicula from pelicula where claveP="P40";


use peliculas;
/*Saber quienes han rentado la película de Venom.*/
select cliente.nombreCliente, cliente.apellidoCliente from fecharenta INNER JOIN pelicula  ON fecharenta.claveP= pelicula.claveP
INNER JOIN cliente ON fecharenta.claveCliente= cliente.claveCliente WHERE pelicula.nombrePelicula= 'Venom';

use peliculas;

/*Saber que películas ha producido Marvel Studios.*/
select pelicula.nombrePelicula from tener INNER JOIN pelicula on tener.claveP= pelicula.claveP
INNER JOIN  productora on tener.claveProductora= productora.claveProductora 
where productora.nombreProductora='Marvel Studios';


/* Saber que Peliculas pertenecen al Género Acción*/
select pelicula.nombrePelicula from pertenece 
INNER JOIN pelicula ON pertenece.claveP= pelicula.claveP 
INNER JOIN genero ON pertenece.claveGen= genero.claveGen where genero.nombreGen="Accion";

/*Saber cuantas personas han rentado la película “Roma”*/
select count(cliente.nombreCliente) as total from fecharenta
INNER JOIN pelicula on fecharenta.claveP= pelicula.claveP
INNER JOIN cliente on fecharenta.claveCliente= cliente.claveCliente where pelicula.nombrePelicula="Roma";

use peliculas;




/*Saber que películas se han rentado en la fecha “12-02-19”*/
select pelicula.nombrePelicula from fecharenta INNER JOIN pelicula
 on fecharenta.claveP= pelicula.claveP where fechaPrestamo='2019-02-12';


/*ciencia ficcion a accion venom*/

select * from pertenece;
update pertenece INNER JOIN  pelicula on pertenece.claveP = pelicula.claveP
 INNER JOIN  genero on pertenece.claveGen= genero.claveGen SET pertenece.claveGen=1 WHERE pelicula.claveP ="P40";

select * from pertenece;
use peliculas;
update pertenece
 INNER JOIN  pelicula on pertenece.claveP = pelicula.claveP  INNER JOIN  genero on pertenece.claveGen= genero.claveGen SET pertenece.claveGen=1 WHERE pelicula.claveP ='Venom';



select * from fecharenta;


use peliculas;

select * from pertenece;

UPDATE pertenece INNER JOIN  pelicula on pertenece.claveP = pelicula.claveP
 INNER JOIN  genero on pertenece.claveGen= genero.claveGen
 SET pertenece.claveGen=3 WHERE pelicula.nombrePelicula ="Venom";
 
 



