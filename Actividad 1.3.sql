Create database Actividad_1_3
go

USE Actividad_1_3
go


create table Cliente(
CodCliente int not null primary key identity(1,1),
Razon_Social varchar(50) not null ,
Cuit bigint not null unique,
tipo varchar(30) not null check(tipo='Estatal' or tipo='Multinacional' or tipo='Educativo privado' or tipo='Educativo público' or tipo='Sin fines de lucro'),
mail varchar(50) null,
Telefono int null,
celular int  null
)
go

create table Proyecto(
ID_Proyecto int not null,
Nombre varchar(50) not null ,
Descripcion varchar(500) null,
CodCliente int not null foreign key references Cliente(CodCliente),
fechaInicio date not null,
fechaFin date null,
CostoEstimado money not null,
Estado bit not null,
primary key(ID_Proyecto,CodCliente)
)
go