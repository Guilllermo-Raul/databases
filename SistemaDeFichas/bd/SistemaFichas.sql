create database SistemaFichas;
use SistemaFichas;
#drop database sistemafichas;
create table administrador(
idadmin int(5) primary key auto_increment,
nombre varchar(30),
Apaterno varchar(30),
Amaterno varchar(30),
cargo varchar(20),
tel varchar(20),
foto varchar(100) NOT NULL DEFAULT 'default.png',
correo varchar(20),
user varchar(20),
passwd varchar(20),
privilegio varchar(20) NOT NULL DEFAULT 1
);
select *from administrador;
#select *from usuarios;
#drop table administrador;
#drop table usuarios;
describe administrador;
INSERT INTO administrador (nombre,Apaterno,Amaterno,cargo,tel,correo,user,passwd) VALUES ('guillermo raul','hdez','hdez','txtx','7712343','ghjjf@gmail.com','admin','admin');
create table usuarios(
iduser int(5) primary key auto_increment,
nombre varchar(30),
Apaterno varchar(30),
Amaterno varchar(30),
cargo varchar(20),
tel varchar(20),
foto varchar(100) NOT NULL DEFAULT 'default.png',
correo varchar(20),
user varchar(20),
passwd varchar(20),
privilegio int(20) NOT NULL DEFAULT 2
);
INSERT INTO usuarios(iduser,nombre,Apaterno,Amaterno,cargo,tel,foto,correo) VALUES (9, 'asdg','asdg','asasd','asdg','od','ghjjf','ili');

#drop table modificar;
create table modificar(
id int(5) primary key auto_increment,
cicloescolar varchar(30),
fecha_exam varchar(40),
hora_exam varchar(40),
instrucciones varchar(500),
instrucciones2 varchar(500)
)default CHARSET=utf8;
INSERT INTO modificar (id,cicloescolar,fecha_exam,hora_exam,instrucciones, instrucciones2) VALUES (1,'insertar ciclo escolar','insertar fecha del examen','insertar hora del examen','Ingresar instrucciones','INSTRUCCIONES DOS');
UPDATE modificar SET (id,cicloescolar,fecha_exam,hora_exam,instrucciones, instrucciones2) VALUES (1,'inserta2r ciclo escolar','insertar fecha del examen','insertar hora del examen','Ingresar instrucciones','INSTRUCCIONES DOS');
select *from modificar;
create table ayuda(
id int(5) primary key,
inicio varchar(300),
imginicio varchar(500),
newficha varchar(300),
imgnewficha varchar(500),
buscador varchar(300),
imgbuscador varchar(500),
reportes varchar(300),
imgreportes varchar(500),
graficas varchar(300),
imggraficas varchar(500),
ed_fichas varchar(300),
imged_fichas varchar(500),
adduser_adm varchar(300),
imgadduser_adm varchar(500)

);
INSERT INTO ayuda(id,inicio,imginicio,newficha,imgnewficha,buscador,imgbuscador,reportes,imgreportes,
graficas,imggraficas,ed_fichas,imged_fichas,adduser_adm,imgadduser_adm) VALUES (525, 'asdg','2019-08-02','10:00','asdgfddf','sfd','ggg','fff','fdf','sdfg','sdfg','sdfsd','dfgfgf','dfgfdgd','dfgdgg');

#drop table fichas;

#use sistemafichas;
#drop table fichas;
#select *from usuarios;
#select *from administrador;
#select *From modificar;
#select *from ayuda; 
select * from fichas;
#use sistemafichas;
#describe fichas;
drop table fichas;
create table fichas(
idfichas int primary key auto_increment,
fecha_actual date,
no_ficha varchar(10),
nombre varchar(30),
Apaterno varchar(30),
Amaterno varchar(30),
fecha_nac date,
curp varchar(20),
estado varchar(20),
municipio varchar(20),
localidad varchar(20),
calle varchar(20),
colonia varchar(20),
cp varchar(10),
tel varchar(15),
cel varchar(15),
correo varchar(20),
estd_civil varchar(15),
estd_nac varchar(20),
mpio_nac varchar(20),
prim_fam varchar(60),
prim_porce varchar(10),
prim_parentesco varchar(20),
seg_fam varchar(60),
seg_porce varchar(10),
seg_parentesco varchar(20),
tutor varchar(60),
no_afil varchar(20),
clave_sec varchar(20),
esc_proce varchar(30),
prom_sec varchar(10),
tipo_sangre varchar(12),
prim_op varchar(60) CHARACTER SET latin1,
seg_op varchar(60)CHARACTER SET latin1
)default CHARSET=utf8 COLLATE=utf8_unicode_ci ;
use sistemafichas;
SELECT prim_op,idfichas from fichas where prim_op='Contabilidad';
drop table fichas;
select * from fichas;
describe fichas;
select fecha_actual, no_ficha,nombre,Apaterno,Amaterno,tel,cel,correo,tutor,esc_proce,prim_op,seg_op from fichas where prim_op='Programación';
INSERT INTO fichas(fecha_actual,no_ficha,nombre,Apaterno,Amaterno,fecha_nac,curp,estado,
   municipio,localidad,calle,colonia,cp,tel,cel,correo,estd_civil,estd_nac,mpio_nac,prim_fam,prim_porce,
   prim_parentesco,seg_fam,seg_porce,seg_parentesco,tutor,no_afil,clave_sec,esc_proce,prom_sec,tipo_sangre,
   prim_op,seg_op) VALUES ('12-04-1999','2','2','pedro','gomez','12-09-1999','asdf','asdf','asf','asdg','asg','asgsdjnu','ujuu','unju',
   'vmcvb','cvbm','cvbmcmjg','fghjk','uliol','uiol','iliuy56','yuioy','yuioyulo','tyukut','dgsgsdg','sdfgsd','sdfhgs','sdfgs','sdfhs','sdfhsfd','hte3','dfghdf','kdkd');
   
create table ejemplo(
usuario varchar(20),
paswd varchar(30)
)default CHARSET=utf8;

INSERT INTO ejemplo (usuario,paswd) values('ejemplo','123');