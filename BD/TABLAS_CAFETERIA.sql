CREATE DATABASE BD_cafeteria;

CREATE TABLE cafeteria (
    id_cafeteria INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR (15) NOT NULL,
    dir VARCHAR (40),
    logo VARCHAR (10),

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_cafeteria)

)ENGINE=INNODB;

    INSERT INTO cafeteria VALUES (1, 'VALE´S', 'CALLE SILVETTI #95', 'CAFE.jpg', NOW(), NOW(), 1, 'A');


CREATE TABLE gerente (
    id_gerente INT AUTO_INCREMENT NOT NULL,
    id_cafeteria INT NOT NULL,
    nombre VARCHAR (15) NOT NULL,
    apellidos VARCHAR (15) NOT NULL,
    ci VARCHAR (11) NOT NULL,
    telefono VARCHAR (11) NOT NULL,

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_gerente),
    FOREIGN KEY (id_cafeteria) REFERENCES cafeteria (id_cafeteria)

)ENGINE=INNODB;

    INSERT INTO gerente VALUES (1, 1, 'SAMUEL', 'VALE', '5814375', '68720346', NOW(), NOW(), 1, 'A');
    INSERT INTO gerente VALUES (2, 1, 'LORENA', 'PENARRIETA', '1023544', '60215478', NOW(), NOW(), 1, 'A');


CREATE TABLE proveedores (
    id_proveedor INT AUTO_INCREMENT NOT NULL,
    id_cafeteria INT NOT NULL,
    nombre VARCHAR (15) NOT NULL,
    telefono VARCHAR (11) NOT NULL,
    dir VARCHAR (40),
    apellidos VARCHAR (15) NOT NULL,

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_proveedor),
    FOREIGN KEY (id_cafeteria) REFERENCES cafeteria (id_cafeteria)

)ENGINE=INNODB;
    
    INSERT INTO proveedores VALUES (1, 1, 'PEDRO', '78945612', 'MERCADO CAMPESINO', 'MARTINEZ', NOW(), NOW(), 1, 'A');
    INSERT INTO proveedores VALUES (2, 1, 'CARMEN', '68123457', 'MERCADO CAMPESINO', 'FLORES', NOW(), NOW(), 1, 'A');
    INSERT INTO proveedores VALUES (3, 1, 'MIGUEL', '72984563', 'MERCADO CENTRAL', 'VILLENA', NOW(), NOW(), 1, 'A');
    INSERT INTO proveedores VALUES (4, 1, 'JOSE', '72946851', 'MERCADO CAMPESINO', 'BARRIOS', NOW(), NOW(), 1, 'A');
    INSERT INTO proveedores VALUES (5, 1, 'VICTOR', '68456357', 'MERCADO CAMPESINO', 'LEDEZMA', NOW(), NOW(), 1, 'A');
    INSERT INTO proveedores VALUES (6, 1, 'CARLOS', '70104563', 'MERCADO CENTRAL', 'VILTE', NOW(), NOW(), 1, 'A');
    INSERT INTO proveedores VALUES (7, 1, 'MAURICIO', '78945010', 'MERCADO CAMPESINO', 'CLAURE', NOW(), NOW(), 1, 'A');
    INSERT INTO proveedores VALUES (8, 1, 'FIDEL', '68110457', 'MERCADO CAMPESINO', 'CAMACHO', NOW(), NOW(), 1, 'A');
    INSERT INTO proveedores VALUES (9, 1, 'ALEX', '72940011', 'MERCADO CENTRAL', 'TORREZ', NOW(), NOW(), 1, 'A');
    INSERT INTO proveedores VALUES (10, 1, 'RODRIGO', '72983697', 'MERCADO CENTRAL', 'TARRAGA', NOW(), NOW(), 1, 'A');


CREATE TABLE insumos (
    id_insumo INT AUTO_INCREMENT NOT NULL,
    id_proveedor INT NOT NULL,
    nombre VARCHAR (15) NOT NULL,
    descripcion VARCHAR (100) NOT NULL,

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_insumo),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_proveedor)

)ENGINE=INNODB;

    INSERT INTO insumos VALUES (1, 1, 'LECHE', 'LIQUIDA', NOW(), NOW(), 1, 'A');
    INSERT INTO insumos VALUES (2, 2, 'CAFE', 'CARANAVI DE ALTURA', NOW(), NOW(), 1, 'A');
    INSERT INTO insumos VALUES (3, 3, 'CARNE', 'LOMO', NOW(), NOW(), 1, 'A');
    INSERT INTO insumos VALUES (4, 4, 'FRUTA', 'NARANJAS', NOW(), NOW(), 1, 'A');
    INSERT INTO insumos VALUES (5, 5, 'CREMA', 'CREMA DE LECHE', NOW(), NOW(), 1, 'A');
    INSERT INTO insumos VALUES (6, 6, 'HARINA', 'ESTRELLA', NOW(), NOW(), 1, 'A');


CREATE TABLE tipos_productos (
    id_tipo_producto INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR (15),

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_tipo_producto)

)ENGINE=INNODB;

    INSERT INTO tipos_productos VALUES (1, 'LACTEOS', NOW(), NOW(), 1, 'A');
    INSERT INTO tipos_productos VALUES (2, 'CAFES', NOW(), NOW(), 1, 'A');
    INSERT INTO tipos_productos VALUES (3, 'TORTAS', NOW(), NOW(), 1, 'A');
    INSERT INTO tipos_productos VALUES (4, 'JUGOS', NOW(), NOW(), 1, 'A');
    INSERT INTO tipos_productos VALUES (5, 'POSTRES', NOW(), NOW(), 1, 'A');
    INSERT INTO tipos_productos VALUES (6, 'SODAS', NOW(), NOW(), 1, 'A');


CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT NOT NULL,
    id_cafeteria INT NOT NULL,
    id_tipo_producto INT NOT NULL,
    nombre_producto VARCHAR (55) NOT NULL,
    descripcion VARCHAR (99),
    precio FLOAT NOT NULL,
    foto VARCHAR (50) NOT NULL,

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_cafeteria) REFERENCES cafeteria (id_cafeteria),
    FOREIGN KEY (id_tipo_producto) REFERENCES tipos_productos (id_tipo_producto)

)ENGINE=INNODB;

    INSERT INTO productos VALUES (1, 1, 2, 'LATTE', 'ESCENCIA DE CAFE + LECHE CREMADA', 15, 'LATE.jpg', NOW(), NOW(), 1, 'A');
    INSERT INTO productos VALUES (2, 1, 3, 'TORTA DE CHOCOLATE', 'BIZCOCHO RELLENO Y CUBIERTA DE CHOCOLATE', 22, 'TORTA.jpg', NOW(), NOW(), 1, 'A');
    INSERT INTO productos VALUES (3, 1, 3, 'TORTA DE ZANAHORIA', 'BIZCOCHO DE ZANAHORIA CON QUESO CREMA', 20, 'TORTA.jpg', NOW(), NOW(), 1, 'A');
    INSERT INTO productos VALUES (4, 1, 4, 'LIMONADA', 'ESCENCIA DE LIMON + MENTA', 10, 'LIMONADA.jpg', NOW(), NOW(), 1, 'A');
    INSERT INTO productos VALUES (5, 1, 2, 'AMERICANO', 'ESCENCIA DOBLE DE CAFE + AGUA', 10, 'AMERICANO.jpg', NOW(), NOW(), 1, 'A');
    INSERT INTO productos VALUES (6, 1, 2, 'CAPUCCINO', 'ESCENCIA DOBLE DE CAFE + LECHE CREMADA', 20, 'CAPUCCINO.jpg', NOW(), NOW(), 1, 'A');


CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT NOT NULL,
    id_cafeteria INT NOT NULL,
    nombre VARCHAR (15) NOT NULL,
    ap VARCHAR (20),
    am VARCHAR (20),
    ci VARCHAR (11),
    genero CHAR (1) NOT NULL DEFAULT 'F',
    direccion VARCHAR (50),
    telefono VARCHAR (15),

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_cafeteria) REFERENCES cafeteria (id_cafeteria)

)ENGINE=INNODB;

    INSERT INTO clientes VALUES (1, 1, 'PAOLA', 'VASCO', '', '958435', 'F', '', '70012345', NOW(), NOW(), 1, 'A');
    INSERT INTO clientes VALUES (2, 1, 'ANDRES', 'VILLENA', '', '2615243', 'M', '', '70123456', NOW(), NOW(), 1, 'A');
    INSERT INTO clientes VALUES (3, 1, 'MARCO', 'SANZ', '', '3351872', 'M', '', '79865000', NOW(), NOW(), 1, 'A');
    INSERT INTO clientes VALUES (4, 1, 'ESTEBAN', 'COLODRO', '', '9569635', 'M', '', '60234587', NOW(), NOW(), 1, 'A');
    INSERT INTO clientes VALUES (5, 1, 'MIGUEL', 'ORTIZ', '', '2642243', 'M', '', '68041588', NOW(), NOW(), 1, 'A');
    INSERT INTO clientes VALUES (6, 1, 'ANA', 'VILLAROEL', '', '7895442', 'F', '', '60272135', NOW(), NOW(), 1, 'A');
    INSERT INTO clientes VALUES (7, 1, 'VALERIA', 'MOSCOSO', '', '912345', 'F', '', '68721458', NOW(), NOW(), 1, 'A');
    INSERT INTO clientes VALUES (8, 1, 'EMILIANO', 'CALVO', '', '145873', 'M', '', '60175910', NOW(), NOW(), 1, 'A');
    INSERT INTO clientes VALUES (9, 1, 'MARIA', 'MEDRANO', '', '356957', 'F', '', '68157903', NOW(), NOW(), 1, 'A');
    INSERT INTO clientes VALUES (10, 1, 'CLAUDIA', 'PEÑA', '', '3563554', 'F', '', '72946800', NOW(), NOW(), 1, 'A');


CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT NOT NULL,
    id_cafeteria INT NOT NULL,
    nombre VARCHAR (15) NOT NULL,
    apellidos VARCHAR (20) NOT NULL,
    ci VARCHAR (11) NOT NULL,
    fec_ini DATE NOT NULL,
    fec_fin DATE,
    genero CHAR (1) NOT NULL,
    fec_nac DATE NOT NULL,
    sueldo FLOAT NOT NULL,

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_empleado),
    FOREIGN KEY (id_cafeteria) REFERENCES cafeteria (id_cafeteria)

)ENGINE=INNODB;

    INSERT INTO empleados VALUES (1, 1, 'FERNANDA', 'FIGUEROA', '1548752', '2022-07-10', '2022-12-23', 'F', '1995-07-10', 3500, NOW(), NOW(), 1, 'A');
    INSERT INTO empleados VALUES (2, 1, 'CECILIA', 'LOPEZ', '3625415', '2022-07-02', '2022-12-20', 'F', '1995-01-11', 3500, NOW(), NOW(), 1, 'A');
    INSERT INTO empleados VALUES (3, 1, 'CAMILA', 'TAVERA', '5679854', '2022-07-03', '2022-12-20', 'F', '1994-10-10', 3500, NOW(), NOW(), 1, 'A');


CREATE TABLE consumos_clientes (
    id_consumo_cliente INT AUTO_INCREMENT NOT NULL,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    fec_consumo_cliente DATE NOT NULL,
    monto FLOAT NOT NULL,

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_consumo_cliente),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado)

)ENGINE=INNODB;

    INSERT INTO consumos_clientes VALUES (1, 2, 1, '2022-07-16', 28, NOW(), NOW(), 1, 'A');
    INSERT INTO consumos_clientes VALUES (2, 2, 3, '2022-07-25', 157, NOW(), NOW(), 1, 'A');
    INSERT INTO consumos_clientes VALUES (3, 1, 2, '2022-06-14', 14, NOW(), NOW(), 1, 'A');
    INSERT INTO consumos_clientes VALUES (4, 2, 1, '2022-07-11', 15, NOW(), NOW(), 1, 'A');
    INSERT INTO consumos_clientes VALUES (5, 2, 3, '2022-02-24', 10, NOW(), NOW(), 1, 'A');
    INSERT INTO consumos_clientes VALUES (6, 1, 2, '2022-04-18', 18, NOW(), NOW(), 1, 'A');
    INSERT INTO consumos_clientes VALUES (7, 2, 1, '2022-05-15', 28, NOW(), NOW(), 1, 'A');
    INSERT INTO consumos_clientes VALUES (8, 2, 3, '2022-06-29', 114, NOW(), NOW(), 1, 'A');
    INSERT INTO consumos_clientes VALUES (9, 1, 2, '2022-07-13', 20, NOW(), NOW(), 1, 'A');
    INSERT INTO consumos_clientes VALUES (10, 1, 2, '2022-08-01', 20, NOW(), NOW(), 1, 'A');


CREATE TABLE detalles_consumos (
    id_detalle_consumo INT AUTO_INCREMENT NOT NULL,
    id_consumo_cliente INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,

    _fec_insercion TIMESTAMP NOT NULL,
    _fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    _usuario INT NOT NULL,
    _estado CHAR (1) NOT NULL,

    PRIMARY KEY (id_detalle_consumo),
    FOREIGN KEY (id_consumo_cliente) REFERENCES consumos_clientes (id_consumo_cliente),
    FOREIGN KEY (id_producto) REFERENCES productos (id_producto)

)ENGINE=INNODB;

    INSERT INTO detalles_consumos VALUES (1, 2, 1, 2, NOW(), NOW(), 1, 'A');
    INSERT INTO detalles_consumos VALUES (2, 2, 3, 1, NOW(), NOW(), 1, 'A');
    INSERT INTO detalles_consumos VALUES (3, 1, 2, 3, NOW(), NOW(), 1, 'A');
    INSERT INTO detalles_consumos VALUES (4, 2, 1, 2, NOW(), NOW(), 1, 'A');
    INSERT INTO detalles_consumos VALUES (5, 2, 3, 1, NOW(), NOW(), 1, 'A');
    INSERT INTO detalles_consumos VALUES (6, 1, 2, 3, NOW(), NOW(), 1, 'A');
    INSERT INTO detalles_consumos VALUES (7, 2, 1, 2, NOW(), NOW(), 1, 'A');
    INSERT INTO detalles_consumos VALUES (8, 2, 3, 1, NOW(), NOW(), 1, 'A');
    INSERT INTO detalles_consumos VALUES (9, 1, 2, 3, NOW(), NOW(), 1, 'A');
    INSERT INTO detalles_consumos VALUES (10, 1, 2, 3, NOW(), NOW(), 1, 'A');



-- tabla para reporte estadistico

CREATE TABLE visitas_sitio(
    id_visita INT NOT NULL AUTO_INCREMENT,
    pagina_visitada VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY(id_visita)
)ENGINE=INNODB;

INSERT INTO visitas_sitio (id_visita, pagina_visitada, cantidad) VALUES
(1, 'CURSO DE PHP', 24),
(2, 'CURSO DE HTML', 41),
(3, 'CURSO DE CSS', 28),
(4, 'CURSO DE MODELO E-R', 21),
(5, 'CURSO DE MODELO RELACIONAL', 23),
(6, 'CURSO DE MYSQL BASICO', 23),
(7, 'CURSO DE MYSQL AVANZADO', 26),
(8, 'CURSO DE GIT', 28),
(9, 'CURSO DE NO SQL', 30);


-- tablas de seguridad

CREATE TABLE personas(
id_persona INT  AUTO_INCREMENT  NOT NULL,
id_cafeteria INT NOT NULL,
nombres VARCHAR (30) NOT NULL,
ap VARCHAR(20) ,
am VARCHAR (20),
ci VARCHAR (11) NOT NULL,
telefono VARCHAR (15),
direccion VARCHAR (40) NOT NULL,

_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_usuario INT NOT NULL,
_estado CHAR (1) NOT NULL,

PRIMARY KEY (id_persona),
FOREIGN KEY (id_cafeteria) REFERENCES cafeteria (id_cafeteria)

)ENGINE=INNODB;


CREATE TABLE usuarios(
id_usuario INT AUTO_INCREMENT   NOT NULL,
id_persona INT NOT NULL,
nom_usuario VARCHAR (15) NOT NULL,
clave VARCHAR (100) NOT NULL,

_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_usuario INT NOT NULL,
_estado CHAR (1) NOT NULL,

PRIMARY KEY (id_usuario),
FOREIGN KEY (id_persona) REFERENCES personas (id_persona)
)ENGINE=INNODB;


CREATE TABLE roles (
id_rol INT AUTO_INCREMENT NOT NULL,
rol VARCHAR (20) NOT NULL,

_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_usuario INT NOT NULL,
_estado CHAR (1) NOT NULL,

PRIMARY KEY (id_rol)
)ENGINE=INNODB;

 
 CREATE TABLE usuarios_roles (
id_usuario_rol INT AUTO_INCREMENT NOT NULL,
id_rol INT NOT NULL,
id_usuario INT NOT NULL,

_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_usuario INT NOT NULL,
_estado CHAR (1) NOT NULL,

PRIMARY KEY (id_usuario_rol),
FOREIGN KEY (id_rol)REFERENCES roles (id_rol),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
 )ENGINE=INNODB;


CREATE TABLE grupos(
id_grupo INT AUTO_INCREMENT NOT NULL,
grupo VARCHAR (20) NOT NULL,

_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_usuario INT NOT NULL,
_estado CHAR (1) NOT NULL,

PRIMARY KEY (id_grupo)
)ENGINE=INNODB;


CREATE TABLE opciones(
id_opcion INT AUTO_INCREMENT  NOT NULL,
id_grupo INT NOT NULL,
opcion VARCHAR (30) NOT NULL,
contenido VARCHAR (50) NOT NULL,
orden INT NOT NULL,

_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_usuario INT NOT NULL,
_estado CHAR (1) NOT NULL,

PRIMARY KEY(id_opcion),
FOREIGN KEY (id_grupo) REFERENCES grupos (id_grupo)
)ENGINE=INNODB;


CREATE TABLE accesos(
id_acceso INT AUTO_INCREMENT NOT NULL,
id_rol INT NOT NULL,
id_opcion INT NOT NULL,

_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_usuario INT NOT NULL,
_estado CHAR (1) NOT NULL,

PRIMARY KEY (id_acceso),
FOREIGN KEY (id_rol) REFERENCES roles (id_rol),
FOREIGN KEY (id_opcion) REFERENCES opciones (id_opcion)
)ENGINE=INNODB;



INSERT INTO personas VALUES(1,1,'SAMUEL','VALE','CALLE ','5814375','68720346','Barrio 4to Centenario',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(2,1,'FRANCISCO','RODRIGUEZ','PEÑA ','5463455','72960346','Barrio La Loma',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(3,1,'JAVIER','DELGADO','SOLIZ ','5354275','68729685','Barrio Catedral',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(4,1,'FERNANDA','GONZALES','CASTRO ','1234375','60270346','Barrio Aranjuez',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(5,1,'YOSELIN','CARREÑO','MENDEZ ','3543375','75110346','Barrio Constructor',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(6,1,'CARLOS','VALDERRAMA','FERNANDEZ','1355375','7324346','Barrio El Molino',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(7,1,'LORENA','TARRAGA','VILLA','1358463','72935446','Barrio La Loma',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(8,1,'DANIEL','TORO','MENDIETA','1234375','61245446','Barrio Tabladita',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(9,1,'FIDEL','VACA','LIZARASO ','9786375','6000436','Barrio San Jose',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(10,1,'LAURA','LOROÑO','GUTIERREZ ','5852175','66900046','Barrio Villa Avaroa',NOW(),NOW(),1,'A');

INSERT INTO personas VALUES(20,1,'PATRICIO','GUZMAN','TRIGO ','0000375','7000437','Barrio San Antonio',NOW(),NOW(),1,'A');
INSERT INTO personas VALUES(21,1,'BENITO','CASTRO','JEREZ ','5852000','76900047','Barrio Tabladita',NOW(),NOW(),1,'A');

INSERT INTO usuarios VALUES(1,1,'admin','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now(),now(),1,'A');

INSERT INTO usuarios VALUES(2,20,'cajero','$2y$10$aF9llyF1Y5L0lh4dat8oyu8KlG/MykpZ8KMDYMOU3TaK8c2FFLsje',now(),now(),1,'A');
INSERT INTO usuarios VALUES(3,21,'barista','$2y$10$jU/zFlGcZDo834g3I3AJzefkqYy7lHLvEDHZqVRIJhWjnd1n3oLla',now(),now(),1,'A');

INSERT INTO roles VALUES(1,'ADMINISTRADOR',now(),now(), 1, 'A');

INSERT INTO roles VALUES(2,'USUARIO PRUEBA 1',now(),now(), 1, 'A');
INSERT INTO roles VALUES(3,'USUARIO PRUEBA 2',now(),now(), 1, 'A');


INSERT INTO grupos VALUES(1,'HERRAMIENTAS',NOW(),NOW(),1,'A');
INSERT INTO grupos VALUES(2,'PARAMETROS',NOW(),NOW(),1,'A');
INSERT INTO grupos VALUES(3,'CAFETERIA',NOW(),NOW(),1,'A');
INSERT INTO grupos VALUES(4,'REPORTES',NOW(),NOW(),1,'A');


INSERT INTO usuarios_roles VALUES (1,1,1,now(),now(),1,'A');

INSERT INTO usuarios_roles VALUES (2,1,2,now(),now(),1,'A');
INSERT INTO usuarios_roles VALUES (3,1,3,now(),now(),1,'A');

 
INSERT INTO opciones VALUES(1,1,'PERSONAS','../privada/personas/personas.php',10,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(2,1,'USUARIOS ','../privada/usuarios/usuarios.php',20,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(3,1,'GRUPOS','../privada/grupos/grupos.php',30,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(4,1,'ROLES','../privada/roles/roles.php',40,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(5,1,'USUARIOS ROLES','../privada/usuarios_roles/usuarios_roles.php',50,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(6,1,'OPCIONES','../privada/opciones/opciones.php',60,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(7,1,'ACCESOS','../privada/accesos/accesos.php',70,NOW(),NOW(),1,'A');

INSERT INTO opciones VALUES(8,2,'TIPOS PRODUCTOS','../privada/tipos_productos/tipos_productos.php',10,NOW(),NOW(),1,'A');

INSERT INTO opciones VALUES(9,3,'DATOS CAFETERIA','../privada/cafeteria/cafeteria.php',10,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(10,3,'GERENTE','../privada/cafeteria/cafeteria.php',20,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(11,3,'PROVEEDORES','../privada/proveedores/proveedores.php',30,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(12,3,'INSUMOS','../privada/insumos/insumos.php',40,NOW(),NOW(),1,'A');;
INSERT INTO opciones VALUES(13,3,'PRODUCTOS','../privada/productos/productos.php',50,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(14,3,'CLIENTES','../privada/clientes/clientes.php',60,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(15,3,'EMPLEADOS','../privada/cafeteria/cafeteria.php',70,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(16,3,'CONSUMOS CLIENTES','../privada/consumos_clientes/consumos_clientes.php',80,NOW(),NOW(),1,'A');

INSERT INTO opciones VALUES(17,4,'Rpt Personas con usuarios','../privada/reportes/personas_usuarios.php',10,NOW(),NOW(),1,'A');
INSERT INTO opciones VALUES(18,4,'Rpt Personas con fechas','../privada/reportes/personas_fechas.php',20,NOW(),NOW(),1,'A');


 
 
INSERT INTO accesos VALUES(1, 1, 1, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(2, 1, 2, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(3, 1, 3, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(4, 1, 4, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(5, 1, 5, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(6, 1, 6, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(7, 1, 7, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(8, 1, 8, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(9, 1, 9, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(10, 1, 10, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(11, 1, 11, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(12, 1, 12, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(13, 1, 13, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(14, 1, 14, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(15, 1, 15, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(16, 1, 16, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(17, 1, 17, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(18, 1, 18, NOW(), NOW(), 1, 'A');

INSERT INTO accesos VALUES(26, 2, 14, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(26, 2, 15, NOW(), NOW(), 1, 'A');
INSERT INTO accesos VALUES(26, 3, 12, NOW(), NOW(), 1, 'A');



CREATE TABLE registro_huellas(
    id_registro_huella INT NOT NULL AUTO_INCREMENT,
    consulta VARCHAR(50) NOT NULL,
    _fec_insercion TIMESTAMP NOT NULL,
    _usuario int NOT NULL,
    PRIMARY KEY (id_registro_huella)
)ENGINE=INNODB;


