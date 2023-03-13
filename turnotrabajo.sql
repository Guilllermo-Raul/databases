create database turnotrabajo;
use turnotrabajo;




create table empleado(
dni int primary key,
nombre varchar(45)

);


insert  into empleado(dni, nombre) values(33456456, "P.Martin");
insert  into empleado(dni, nombre) values(44556689, "L.Sanz");
insert  into empleado(dni, nombre) values(99771122, "D.Diaz");
insert  into empleado(dni, nombre) values(11223344, "E.Lopez");
insert  into empleado(dni, nombre) values(99887766, "F.Monte");


SELECT * FROM empleado;


create table tienda(
codigo_tienda varchar(45) primary key,
direccion_tienda varchar(45)
);




insert  into tienda(codigo_tienda, direccion_tienda) values("100A", "Avd.Mayor,23,Alcorcon");
insert  into tienda(codigo_tienda, direccion_tienda) values("200B", "C/Sur 13,Alcorcon");
insert  into tienda(codigo_tienda, direccion_tienda) values("300C", "PI.Central,Getafe");



create table turno(
idturno int primary key,
turno varchar(45)
);


insert into turno(idturno,turno) values (1, "M");
insert into turno(idturno,turno) values (2, "T");


create table trabaja(
dni int,
codigo_tienda varchar(45),
fecha date,
idturno int,
foreign key (dni) references empleado(dni),
foreign key (codigo_tienda) references tienda(codigo_tienda),
foreign key (idturno) references turno(idturno)
);
delete from trabaja;
select * from trabaja;
insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(33456456, "100A", '2006-09-02',1);

insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(44556689, "100A", '2006-09-02',1);
insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(99771122, "100A", '2006-09-02',2);

insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(33456456, "200B", '2006-09-03',2);
insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(11223344, "300C", '2006-09-03',1);
insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(99887766, "200B", '2006-09-03',1);
insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(11223344, "300C", '2006-09-04',1);
insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(99887766, "100A", '2006-09-04',1);

insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(44556689, "100A", '2006-09-04',2);
insert into trabaja(dni, codigo_tienda, fecha, idturno) 
value(33456456, "200B", '2006-09-05',1);


use turnotrabajo;
/*--------------------1----------------------*/
update  empleado SET nombre ="Pablo Martin"  WHERE nombre ='Pablo Martin';

/*--------------------------------------------*/

select * from empleado;


/*--------------------2----------------------*/
alter table tienda add nombretienda varchar(45);


describe tienda;


update tienda set nombretienda="La escondida" where codigo_tienda="100A";
update tienda set nombretienda= "Las canarias" where codigo_tienda="200B";
update tienda set nombretienda= "La pasadita" where codigo_tienda="300C";


select *from tienda;

/*------------------------------------------*/



/*----------3--------------*/

insert into turno(idturno,turno) values (3, "N");


insert into trabaja(dni, codigo_tienda, fecha, idturno) value(99771122, "200B", '2019-02-14',3);



insert into trabaja(dni, codigo_tienda, fecha, idturno) value(44556689, "100A", '2019-02-15',3);



select * from trabaja;
/*----------------------------------------*/


/*--------------------4----------------------*/


UPDATE trabaja INNER JOIN  empleado on trabaja.dni = empleado.dni 
SET fecha='2019-02-14' WHERE empleado.nombre ="Pablo Martin" and trabaja.fecha='2006-09-2';
/*--------------------------------------------*/


select * from trabaja;
/*----------------------5------------------------*/



delete from tienda where nombretienda="las Canarias";


/*---------------------------------------------*/



select * from empleado;

use turnotrabajo;
select empleado.dni, empleado.nombre, turno.turno, trabaja.fecha from empleado INNER JOIN trabaja on empleado.dni= trabaja.dni
inner join turno ON  turno.idturno= trabaja.idturno  where empleado.nombre="Pablo Martin" order by trabaja.fecha DESC;


select empleado.nombre, trabaja.fecha, turno.turno from empleado INNER JOIN trabaja on empleado.dni= trabaja.dni
inner join turno ON turno.idturno= trabaja.idturno where trabaja.fecha='2006-09-03';

select count(empleado.nombre) as fechasTotal from trabaja 
INNER JOIN empleado on trabaja.dni= empleado.dni
INNER JOIN turno on turno.idturno= trabaja.idturno where trabaja.fecha='2006-09-4';



create view e as select empleado.nombre, trabaja.fecha, turno.turno from empleado INNER JOIN trabaja on empleado.dni= trabaja.dni
inner join turno ON turno.idturno= trabaja.idturno where trabaja.fecha='2006-09-03';

