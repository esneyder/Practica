
use DefaultConnection
 
select * from datospersonales
select * from antecendentesAc
select * from experienciaLab
select * from capasitacion

select * from datostrabajador

go

create table datospersonales(
rut char(50) not  null primary key,
nombres char(100) not null,
email char(100) not null,
fechaNacimiento char(20) not null,
edad int not null,
region char(50) not null,
profesion char(80) not null,
numsemestre int not null,
direccion char(50) null,
telefono char(15) null,
celular char(15) null,
imagen text not null 
)

go 

create table antecendentesAc(
id int not null identity(1,1) primary key,
institucion char(100) not null,
numSemestres int not null,
titulo char(150) null,
rut char(50) not  null
)

go


create table experienciaLab(
id int not null identity(1,1) primary key,
institucion char(100) not null,
cargo char(50) not null,
periodo char(10) not null,
rut char(50) not  null,
)

go

create table capasitacion(
id int not null identity(1,1) primary key,
institucion char(100) not null,
nombreCurso char(100) not null,
numHorasAcademicas int not null,
rut char(50) not  null

)
go

create table datostrabajador(
Rut char(50) not null primary key,
Nombres char(80) not null,
Direccion char(80) null,
DiasTrabajados int not null,
HorasExtras int null,
EstadoCivil char(50) not null,
SumidoBase char(50) null,
NroCargaFam char(20) null
)
go
/*relacionar tablas*/
alter table antecendentesAc add foreign key (rut)
references datospersonales(rut)

go
alter table experienciaLab add foreign key (rut)
references datospersonales(rut)
go
alter table capasitacion add foreign key (rut)
references datospersonales(rut)

go
/*procedure*/
create proc spdatospersonalesIA(
@operacion char(1),
@rut char(50) ,
@nombres char(100) ,
@email char(100),
@fechaNacimiento char(20),
@edad int ,
@region char(50) ,
@profesion char(80) ,
@numsemestre int ,
@direccion char(50) ,
@telefono char(15) ,
@celular char(15) ,
@imagen text 
)
as
begin
if(@operacion='I')
insert into datospersonales values(@rut,@nombres,@email,@fechaNacimiento,@edad,@region,@profesion,@numsemestre,@direccion,@telefono,@celular,@imagen)
end 
go

create proc spAntecedentesAc(
@operacion char(1),
@institucion char(100) ,
@numSemestres int,
@titulo char(150) ,
@rut char(50) 
)
as begin
if(@operacion='I')
insert into antecendentesAc values(@institucion,@numSemestres,@titulo,@rut)
end
go

create proc spExperienciaLab(
@operacion char(1),
@institucion char(100) ,
@cargo  char(50),
@periodo  char(150) ,
@rut char(50) 
)
as begin
if(@operacion='I')
insert into experienciaLab values(@institucion,@cargo,@periodo,@rut)
end

go

create proc spCapasitacion(
@operacion char(1),
@institucion char(100) ,
@nombreCurso  char(50),
@numHorasAcademicas char(150) ,
@rut char(50) 
)
as begin
if(@operacion='I')
insert into capasitacion values(@institucion,@nombreCurso,@numHorasAcademicas,@rut)
end

go

create proc spDatosPersonasSE(
@operacion char(1),
@nit char(50)
)
as begin
if(@operacion='Q')
select * from datospersonales
end


go

create proc spdatostrabajadorIA(
@operacion char(1),
@rut char(50),
@nombres char(80),
@direccion char(80),
@diastrabajados int,
@horasExtras int,
@estadocivil char(50),
@sumidobase char(50),
@nrocargafam char(20)
)
as begin
if(@operacion='I')
insert into datostrabajador values(@rut,@nombres,@direccion,@diastrabajados,@horasExtras,@estadocivil,@sumidobase,@nrocargafam)
else if(@operacion='A')
update datostrabajador set Nombres=@nombres,Direccion= @direccion,DiasTrabajados=@diastrabajados,HorasExtras= @horasExtras,EstadoCivil=@estadocivil,SumidoBase=@sumidobase,NroCargaFam=@nrocargafam where Rut=@rut
end
go


create proc spdatostrabajadorSE(
@operacion char(1),
@rut char(50)
)
as begin
if(@operacion='S')
select * from datostrabajador where Rut=@rut
else if(@operacion='E')
delete datostrabajador where Rut=@rut
else
select * from datostrabajador
end