CREATE DATABASE soluciones_pt;
USE soluciones_pt;

CREATE TABLE solucion(
	id_solucion_pk SERIAL NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    color VARCHAR(20),
    metodologia VARCHAR(20),
    
    PRIMARY KEY(id_solucion_pk)
);

CREATE TABLE identificador_equipo(
	ide_pk SERIAL NOT NULL,
    id_equipo VARCHAR(30) NOT NULL,
    pass VARCHAR(30) NOT NULL,
    
    PRIMARY KEY(ide_pk)
);

CREATE TABLE identificador_soluciones(
	id_is_pk SERIAL NOT NULL,
    id_equipo_fk BIGINT UNSIGNED,
    cantidad INT NOT NULL,
    codigo VARCHAR(20),
    id_solucion_fk BIGINT UNSIGNED,
    
    PRIMARY KEY(id_is_pk),
    FOREIGN KEY(id_solucion_fk)
		REFERENCES solucion(id_solucion_pk),
	FOREIGN KEY(id_equipo_fk)
		REFERENCES identificador_equipo(ide_pk)
);

CREATE TABLE codigo(
	id_codigo_pk SERIAL NOT NULL,
    cod VARCHAR(20) NOT NULL,
	
    PRIMARY KEY(id_codigo_pk)
);



INSERT INTO codigo(cod) VALUES('2343852904194');

INSERT INTO identificador_equipo(id_equipo, pass) VALUES('PC1', '12345PASS');

INSERT INTO solucion(nombre, color, metodologia) VALUES('Solucion 1', 'Rojo', 'JFK3KD3KN');
INSERT INTO solucion(nombre, color, metodologia) VALUES('Solucion 2', 'Verde', 'KCWS34P21');

INSERT INTO identificador_soluciones(id_equipo_fk, cantidad, codigo, id_solucion_fk) 
		VALUES(1, 12, '2343852904194', 1);
INSERT INTO identificador_soluciones(id_equipo_fk, cantidad, codigo, id_solucion_fk) 
		VALUES(1, 7, '9528490129581', 2);

        
SELECT * FROM codigo;
SELECT * FROM identificador_soluciones
	JOIN solucion ON id_solucion_pk = id_solucion_fk
    JOIN identificador_equipo ON ide_pk = id_equipo_fk;

