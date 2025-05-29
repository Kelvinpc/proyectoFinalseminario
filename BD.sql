CREATE DATABASE centrocapacitacion;

USE centrocapacitacion;

CREATE TABLE evaluacion(
	idevaluacion			      INT							AUTO_INCREMENT PRIMARY KEY,
	nombreexamen			      VARCHAR(20)					NOT NULL,
    preguntas				      INT	DEFAULT 20 				NOT NULL,
    intentosDisponible		INT DEFAULT 1 				NOT NULL,
    respuestascorrectas		VARCHAR(90)					NOT NULL,
    fechainicio				    DATE						NOT NULL,
    fechafin				      DATE						NULL,
    tiempodesarrollomins	INT							NOT NULL,
    
    fechacreacion			    DATE DEFAULT NOW()			NOT NULL,
    fechamodificacion 		DATE						NULL
    
)ENGINE = INNODB;


CREATE TABLE alumno(
	idalumno				        INT 						AUTO_INCREMENT PRIMARY KEY,
    nombre					      VARCHAR(20)					NOT NULL,
    apellidos				      VARCHAR(40)					NOT NULL,
    correo					      VARCHAR(60)					NOT NULL,
    tipodoc					      ENUM('DNI','DEX','PASS')	NOT NULL COMMENT 'DEX = Documento de EXtranjeria. PASS = Pasaporte',
    numdoc					      VARCHAR(12)					NOT NULL,

    fechacreacion			    DATE DEFAULT NOW()			NULL,
    fechamodificacion 		DATE						NULL

)ENGINE = INNODB;

CREATE TABLE respuestasmarcadas(
	idrespuestasmarcadas	  INT							AUTO_INCREMENT PRIMARY KEY,
    respuestasmarcadas		VARCHAR(20)					NOT NULL,
    puntaje					      INT							NOT NULL,
    estado					      VARCHAR(20)					NOT NULL,
    
    fechacreacion			    DATE DEFAULT NOW() 			NULL,
    fechamodificacion 		DATE						NULL,
	idevaluacion 			      INT 						NOT NULL,
	idalumno				        INT 						NOT NULL,
	CONSTRAINT fk_idevaluacion FOREIGN KEY (idevaluacion) REFERENCES evaluacion(idevaluacion),
	CONSTRAINT fk_idalumno FOREIGN KEY (idalumno) REFERENCES alumno(idalumno) 
    
)ENGINE = INNODB;