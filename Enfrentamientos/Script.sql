create database if not exists Juegos;

use Juegos;

create table Jugador(
	Id_Jugador integer primary key,
	Nombre varchar(15),
	Apellido_Paterno varchar(15),
	apellido_Materno varchar(15),
	Direccion varchar(25),
	Telefono varchar(10),
	Puntos integer);

create table Campeon(
	Id_Campeon integer primary key,
	Nombre varchar(15),
	Apellido_Paterno varchar(15),
	apellido_Materno varchar(15),
	Direccion varchar(25),
	Telefono varchar(10),
	Puntos integer);

create table Juega(
	Id_Jugador integer,
	Id_Campeon integer,
	resultado integer,
	foreign key(Id_Jugador) references Jugador(Id_Jugador) on delete restrict on update cascade,
	foreign key(Id_Campeon) references Campeon(Id_Campeon) on delete restrict on update cascade);