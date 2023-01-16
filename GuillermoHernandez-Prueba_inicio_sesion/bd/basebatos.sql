create database prueba;
use prueba;
create table tbl_login(
id varchar (5) primary key,
email varchar(50),
passwd varchar(50),
nombre varchar(50) CHARACTER SET latin1,
apellido varchar(50) CHARACTER SET latin1,
foto varchar(100) NOT NULL DEFAULT 'default.png'
)default CHARSET=utf8 COLLATE=utf8_unicode_ci ;

insert into tbl_login (id, email, passwd, nombre, apellido) values("n1", "ejemplo@gmail.com", "12345", "Guillermo", "Hernández");



select *from tbl_login;