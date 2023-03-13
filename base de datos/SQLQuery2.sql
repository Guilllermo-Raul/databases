 /***********************************************+new*/
insert into Alumnos (matricula,nombre,ApPat,ApMat,fechanacimiento) values(18393,'Gerardo','Hernandez', 'Marquez','1996-05-01');
insert into Alumnos (matricula,nombre,ApPat,ApMat,fechanacimiento) values(17150,'Pedro','Gomez', 'Soreano','1999-01-25');
insert into Alumnos (matricula,nombre,ApPat,ApMat,fechanacimiento) values(17320,'Valeria','Herrera', 'Piña','2000-04-03');
insert into Alumnos (matricula,nombre,ApPat,ApMat,fechanacimiento) values(18290,'Mariana','Roque', 'Moreno','1996-10-01');
insert into Alumnos (matricula,nombre,ApPat,ApMat,fechanacimiento) values(16190,'Camila','Sanchez', 'Hernández','1996-11-22');
insert into Alumnos (matricula,nombre,ApPat,ApMat,fechanacimiento) values(13056,'Alejandra','Alvarez', 'Juarez','1996-12-11');

 /*************************************************************/

   /*****************************NEW LIBROS********************************/
 insert into libros (idlibro,titulo,noejemplares)values(6, 'El resplandor', 3);
 insert into libros (idlibro,titulo,noejemplares)values(7, 'La naranja mecanica', 8);
 insert into libros (idlibro,titulo,noejemplares)values(8, 'El señor de los anillos', 6);
 insert into libros (idlibro,titulo,noejemplares)values(9, 'Las aventuras de ', 2);
 insert into libros (idlibro,titulo,noejemplares)values(10, 'Viaje al centro de la tierra', 1);
 insert into libros (idlibro,titulo,noejemplares)values(11, 'Carry', 7);
 insert into libros (idlibro,titulo,noejemplares)values(12, 'El festival de la Blasfemia', 3);
 insert into libros (idlibro,titulo,noejemplares)values(13, 'Luna de Pluton', 6);
 insert into libros (idlibro,titulo,noejemplares)values(14, '22/11/1963', 12);
 insert into libros (idlibro,titulo,noejemplares)values(15, 'Harry Potter y el caliz de Fuego', 14);



/****************************************************************/


/*********************************************************NEW
insert into Editorial(idEditorial,nombre,estado)values(226,'Alfa Omega','Estado de México');
insert into Editorial(idEditorial,nombre,estado)values(227,'Freeditorial','Los Angeles');
insert into Editorial(idEditorial,nombre,estado)values(228,'Arlequín','CDMX')
insert into Editorial(idEditorial,nombre,estado)values(229,'salamandra','Reino Unido');
insert into Editorial(idEditorial,nombre,estado)values(230,'salamandra','Reino Unido');
insert into Editorial(idEditorial,nombre,estado)values(231,'salamandra','Reino Unido');
insert into Editorial(idEditorial,nombre,estado)values(232,'salamandra','Reino Unido');
insert into Editorial(idEditorial,nombre,estado)values(233,'salamandra','Reino Unido');
insert into Editorial(idEditorial,nombre,estado)values(234,'salamandra','Reino Unido');
insert into Editorial(idEditorial,nombre,estado)values(235,'salamandra','Reino Unido');



*********************************************************/

 /*
 update libros set idEditorial=225 where idlibro=6;
 update libros set idEditorial=225 where idlibro=7;
 update libros set idEditorial=226 where idlibro=8;
 update libros set idEditorial=227 where idlibro=9;
 update libros set idEditorial=228 where idlibro=10;
 update libros set idEditorial=228 where idlibro=11;
  update libros set idEditorial=227 where idlibro=12;
   update libros set idEditorial=226 where idlibro=13;
    update libros set idEditorial=222 where idlibro=14;
 update libros set idEditorial=222 where idlibro=15;
 */
 
/********************************************* NEW
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-10-24',5,17173);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-02-09',1,14121);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-02-09',5,14121);

 insert into solicitar(fechasolicitar,idlibro,matricula)values('2020-01-03',3,17149);
  insert into solicitar(fechasolicitar,idlibro,matricula)values('2020-02-05',2,17149);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-12-12',4,17149);
  
  insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-12-12',10,17173);
   insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-12-12',10,14121);


*****************************************************/

/*new
	update autores set estado='Caracas' where idautor=116;
	 update autores set estado='Madrid' where idautor=117;
	 update autores set estado='Reino Unido' where idautor=118;
	 update autores set estado='Ciudad de Mexico' where idautor=119;*/


/*****************************NEW AUTORES********************************
insert into autores(idautor,nombre,ApPat, estado)values(116,'Angel','Revilla','Caracas');
insert into autores(idautor,nombre,ApPat, estado)values(117,'Antonhy','Burgues','Madrid');
insert into autores(idautor,nombre,ApPat, estado)values(118,'J.R.R','Tolkien','Reino Unido');
insert into autores(idautor,nombre,ApPat, estado)values(119,'Gabriel','Garcia','Ciudad de Mexico');
insert into autores(idautor,nombre,ApPat, estado)values(120,'J.K','Rowling','Reino Unido');


****************************************************************/


 /* 
	 	  insert into escribir(idautor,idlibro)values(116,13);
	   insert into escribir(idautor,idlibro)values(116,12);
	  insert into escribir(idautor,idlibro)values(117,7);
	  insert into escribir(idautor,idlibro)values(118,8);
	  insert into escribir(idautor,idlibro)values(119,10);
	  	  insert into escribir(idautor,idlibro)values(119,10);
	  insert into escribir(idautor,idlibro)values(119,14);
	  	  insert into escribir(idautor,idlibro)values(112,11);
		  	  	  insert into escribir(idautor,idlibro)values(115,15);
	 
	 */

	 /* new solicitar
	  insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-12-12',5,17149);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2018-12-12',6,13056);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-5-12',7,17149);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2017-4-12',8,17149);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2016-1-12',9,17149);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2015-2-12',10,17149);
  insert into solicitar(fechasolicitar,idlibro,matricula)values('2015-2-12',11,17149);
   insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-3-12',12,17149);
      insert into solicitar(fechasolicitar,idlibro,matricula)values('2016-2-12',13,17173);
   insert into solicitar(fechasolicitar,idlibro,matricula)values('2010-2-12',14,17173);

     insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-3-12',3,17149);
      insert into solicitar(fechasolicitar,idlibro,matricula)values('2016-2-12',3,17173);
   insert into solicitar(fechasolicitar,idlibro,matricula)values('2010-2-12',3,17173);
    insert into solicitar(fechasolicitar,idlibro,matricula)values('2018-12-12',3,13056);
	/*****************************************************************************************************/
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-3-12',9,16190);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2016-4-15',9,17173);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2019-5-30',9,13056);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2015-5-31',9, 18393);
 insert into solicitar(fechasolicitar,idlibro,matricula)values('2013-12-11',9,13056);

 */

