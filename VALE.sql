/*Utilizando el sistema web que están desarrollando y la siguiente base de datos realizar:
*Crear un grupo en su menu con el nombre EVA PRIMER BIMESTRE-DWII
*Crear una opción dentro del grupo creado que se llame CARRERAS y para ella realizar(listado, inserción, modificación, eliminación)
*Crear otra opción que se llame Rpt Institutos con Carreras en la que va estar el reporte solicitado
Nota.- Enviar lo solicitado (Sistema web y base de datos) en una carpeta comprimida con el nombre Eva_PrimerBi_CAMACHO.rar
*/

CREATE TABLE institutos(
  id_instituto INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(20) NOT NULL,
  direccion VARCHAR(30) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  pag_web VARCHAR(20) NOT NULL,
  resol_min TEXT,
  mision TEXT,
  vision TEXT,
  PRIMARY KEY(id_instituto)
)ENGINE=INNODB;

CREATE TABLE carreras(
id_carrera INT NOT NULL AUTO_INCREMENT,
id_instituto INT NOT NULL,
carrera VARCHAR(30) NOT NULL,
direccion VARCHAR(30) NOT NULL,
telefono VARCHAR(20),
grado_academico VARCHAR(20),
descripcion TEXT,
duracion VARCHAR(30),
PRIMARY KEY (id_carrera),
FOREIGN KEY(id_instituto) REFERENCES institutos(id_instituto)
)ENGINE=INNODB;


INSERT INTO institutos VALUES (1, 'INCOS-TARIJA', 'CALLE LA PAZ Y MEMBRILLOS', '6649594', 'www.incos.com', '555/545',
'Formar profesionales con solida preparacion en las areas de la contabilidad e informatica mediante curriculos que se 
ajusten a las necesidade y realidad del departamento y del pais',
'Alcanzar la excelencia academica bajo parametros de calidad, eficiencia, eficacia e innovacion tecnico-tecnologica
para dar respuesta oportuna a los requerimientos del sector productivo');
INSERT INTO institutos VALUES (2, 'DOMINGO SAVIO', 'CALLE DANIEL CAMPOS', '', 'www.idms.com', '752/2009', 
'Formar integramente tecnicos altmanente capacitados, através de aplicaciones tecnologicas educativas actualizadas, excelencia
academica y vocacion de servicio, para satisfacer las demandas laborales de la region en cursos y carreras tecnicas', 
'Consolidarnos en el mercado regional como lider entre los institutos de capacitacion y/o formacion tecnica a traves de procesos
de calidad y mejora continua');
INSERT INTO institutos VALUES (3, 'CATEC', 'CALLE INGAVI ESQ. JUNIN', '', 'www.catec.com', '', '', '');
INSERT INTO institutos VALUES (4, 'IPC PASCAL', 'CALLE SANTA CRUZ', '', 'www.ipc.com', '', '', '');
INSERT INTO institutos VALUES (5, 'CCA', 'CALLE CAMPERO', '','www.cca.com', '', '', '');


INSERT INTO carreras VALUES (1, 1, 'CONTADURIA PUBLICA', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS');
INSERT INTO carreras VALUES (2, 1, 'SISTEMAS INFORMATICOS', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS');
INSERT INTO carreras VALUES (3, 2, 'AUXILIAR CONTABLE', 'Calle Daniel Campos', '6642345', 'TECNICO MEDIO', '', '2 AÑOS');
INSERT INTO carreras VALUES (4, 2, 'SECRETARIADO EJECUTIVO', 'Calle Daniel Campos', '6642345', 'TECNICO MEDIO', '', '2 AÑOS');
INSERT INTO carreras VALUES (5, 2, 'TECNICO BANCARIO', 'Calle Daniel Campos', '6642345', 'TECNICO MEDIO', '', '2 AÑOS');
INSERT INTO carreras VALUES (6, 3, 'AUXILIAR CONTABLE', 'Calle Campero', '6661598', 'TECNICO MEDIO', '', '2 AÑOS');
INSERT INTO carreras VALUES (7, 1, 'GASTRONOMIA', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS');
INSERT INTO carreras VALUES (8, 1, 'SECRETARIADO EJECUTIVO', 'Av. La Paz esq. Membrillos', '6649455', 'TECNICO SUPERIOR', '', '3 AÑOS');


