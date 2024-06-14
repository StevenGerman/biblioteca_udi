create database biblioteca_sagarna;
use biblioteca_sagarna;

create table Paises (
idPais int primary key auto_increment,
paisNombre varchar(30));

create table Provincias (
idProvincias int primary key auto_increment,
provNombre varchar(30),
PaisID int,
foreign key (PaisID) references Paises(idPais));

create table Localidad (
idLocalidad int primary key auto_increment,
locNombre varchar(50),
locCP varchar(8),
ProvinciaID int,
foreign key (ProvinciaID) references Provincias(idProvincias));

create table Roles (
idRol int primary key auto_increment,
rolNombre varchar(30));

create table Personas (
idPersona int primary key auto_increment,
perNombre varchar(30),
perApellido varchar(30),
perTelefono varchar(10),
perDomicilio varchar(50),
perMail varchar(50),
localidadID int,
rolID int,
foreign key (localidadID) references Localidad(idLocalidad),
foreign key (rolID) references Roles(idRol));

create table Ubicacion (
idUbicacion int primary key auto_increment,
ubiNombre varchar (30),
ubiNroMueble varchar(30),
ubiNroEstante varchar(30),
ubiObservacion varchar(100));

create table Herramientas (
idHerramienta int primary key auto_increment,
herNombre varchar(30),
herCategoria varchar(30),
herDescripcion varchar(100));

create table Inventario_Herramientas (
idInvHer int primary key auto_increment,
invherNumeroSerie varchar(30),
HerramientaID int,
invherDisponibilidad varchar(30),
invherEstado varchar(50),
UbicacionID int,
foreign key (UbicacionID) references Ubicacion (idUbicacion));

create table SigTopografica (
idSigTopografica int primary key auto_increment,
topNombre varchar (30));

create table Autores (
idAutor int primary key auto_increment,
autNombre varchar(30),
autApellido varchar(30),
autFecNac varchar(10),
autBiografia varchar(150),
autFecDes varchar(10));

create table Editorial (
idEditorial int primary key auto_increment,
ediNombre varchar(30),
ediDireccion varchar(30),
LocalidadID int,
ediTelefono varchar(30),
ediEmail varchar(50),
Foreign key (LocalidadID) references Localidad(idLocalidad));

create table Materia (
idMateria int primary key auto_increment,
matNombre varchar(30));

create table Libros (
idLibro int primary key auto_increment,
libTitulo varchar(50),
libAnio varchar(4),
SigTopograficaID int,
AutorID int,
EditorialID int,
MateriaID int,
libNotaContenido varchar (100),
foreign key (SigTopograficaID) references SigTopografica(idSigTopografica),
foreign key (AutorID) references Autores(idAutor),
foreign key (EditorialID) references Editorial(idEditorial),
foreign key (MateriaID) references Materia(idMateria));

create table Inventario (
idInventario int primary key auto_increment,
invNumero varchar (30),
LibrosID int,
UbicacionID int,
invIntegridad varchar(30),
foreign key (LibrosID) references Libros(idLibro),
foreign key (UbicacionID) references Ubicacion(idUbicacion));

create table PrestamosLibros (
idPrestamo int primary key auto_increment,
PersonaID int,
InventarioLibroID int,
presFechaSalida varchar(10),
presFechaDev varchar(10),
presObservacion varchar(100),
foreign key (PersonaID) references Personas(idPersona),
foreign key (InventarioLibroID) references Inventario(idInventario));

create table libAutor (
LibroID int,
AutorID int,
foreign key (LibroID) references Libros(idLibro),
foreign key (AutorID) references Autores(idAutor));

/* LAMINAS MAPOTECA HEMEROTECA PRODAUDIOVISUAL */

create table Laminas (
idLaminas int primary key auto_increment,
lamTitulo varchar(30),
AutorID int,
lamAnio varchar(4),
lamDescripcion varchar(150),
foreign key (AutorID) references Autores(idAutor));

create table InvLaminas (
idInvLaminas int primary key auto_increment,
LaminasID int,
invlamNumero varchar(30),
UbicacionID int,
invIntegridad varchar(100),
foreign key (LaminasID) references Laminas(idLaminas),
foreign key (UbicacionID) references Ubicacion(idUbicacion));

create table PrestamosLaminas (
idPrestamoLaminas int primary key auto_increment,
PersonaID int,
LaminasIDInv int,
presFechaSalida varchar(10),
presFechaDev varchar(10),
presObservacion varchar(100),
foreign key (PersonaID) references Personas(idPersona),
foreign key (LaminasIDInv) references InvLaminas(idInvLaminas));

create table Mapoteca (
idMapoteca int primary key auto_increment,
mapIdentificacion varchar(30),
mapCategoria varchar(30),
mapDescripcion varchar(100));

create table InvMapoteca (
idInvMapoteca int primary key auto_increment,
MapotecaID int,
invmapNumero varchar(30),
UbicacionID int,
invIntegridad varchar(100),
foreign key (MapotecaID) references Mapoteca(idMapoteca),
foreign key (UbicacionID) references Ubicacion(idUbicacion));

create table PrestamosMapoteca (
idPrestamoMapoteca int primary key auto_increment,
PersonaID int,
MapotecaIDInv int,
presFechaSalida varchar(10),
presFechaDev varchar(10),
presObservacion varchar(100),
foreign key (PersonaID) references Personas(idPersona),
foreign key (MapotecaIDInv) references InvMapoteca(idInvMapoteca));

create table Hemeroteca (
idHemeroteca int primary key auto_increment,
hemIdentificacion varchar(30),
hemCategoria varchar(30),
hemDescripcion varchar(100),
hemCantidad int);

create table InvHemeroteca (
idInvHemeroteca int primary key auto_increment,
HemerotecaID int,
invhemNumero varchar(30),
UbicacionID int,
invIntegridad varchar(100),
foreign key (HemerotecaID) references Hemeroteca(idHemeroteca),
foreign key (UbicacionID) references Ubicacion(idUbicacion));

create table PrestamosHemeroteca (
idPrestamoHemeroteca int primary key auto_increment,
PersonaID int,
HemerotecaIDInv int,
presFechaSalida varchar(10),
presFechaDev varchar(10),
presObservacion varchar(100),
foreign key (PersonaID) references Personas(idPersona),
foreign key (HemerotecaIDInv) references InvHemeroteca(idInvHemeroteca));

create table ProdAudiovisual (
idProdAudiovisual int primary key auto_increment,
audTitulo varchar(30),
audRotulo varchar(30));

create table InvAudiovisual (
idInvAudiovisual int primary key auto_increment,
ProdAudiovisualID int,
invaudNumero varchar(30),
UbicacionID int,
invaudCopia int,
invIntegridad varchar(100),
foreign key (ProdAudiovisualID) references ProdAudiovisual(idProdAudiovisual),
foreign key (UbicacionID) references Ubicacion(idUbicacion));

create table PrestamosAudiovisual (
idPrestamosAudiovisual int primary key auto_increment,
PersonaID int,
AudiovisualIDInv int,
presFechaSalida varchar(10),
presFechaDev varchar(10),
presObservacion varchar(100),
foreign key (PersonaID) references Personas(idPersona),
foreign key (AudiovisualIDInv) references InvAudiovisual(idInvAudiovisual));

/*drop database biblioteca_sagarna;/
