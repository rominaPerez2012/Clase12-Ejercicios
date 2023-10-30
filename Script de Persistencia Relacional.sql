-- 2. Generar el modelo en algún motor de DB (oracle, mysql, sqlite, etc.)

-- CREATE DATABASE Qatar2022;

USE Qatar2022;

CREATE TABLE Departamento(
	idDepartamento INT(11) NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(250),
    Descripcion VARCHAR(250),
    Presupuesto FLOAT(100,2),
    Primary Key (idDepartamento)
);

CREATE TABLE Empleado(
	DNI INT NOT NULL,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Nacionalidad VARCHAR(100),
    idDepartamento INT NOT NULL,
    Primary Key (DNI),
	FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento)
);

INSERT Departamento (Nombre, Descripcion, Presupuesto)
VALUES ("Logística", "Departamento de Logística", 56877);

INSERT Departamento (Nombre, Descripcion, Presupuesto)
VALUES ("Sistemas", "Departamento de IT", 4678988.00);

INSERT Departamento (Nombre, Descripcion, Presupuesto)
VALUES ("Compras", "Departamento de Compras en General", 100000.00);

INSERT Departamento (Nombre, Descripcion, Presupuesto)
VALUES ("RR. HH.", "Departamento de Recursos Humanos", 78900.00);

-- Verifico que se hayan insertado
-- select * from Departamento

INSERT Empleado (DNI, Nombre, Apellido, Nacionalidad, idDepartamento)
VALUES (33567988, "Romina", "Perez", "Argentina", 2);

INSERT Empleado (DNI, Nombre, Apellido, Nacionalidad, idDepartamento)
VALUES (17665990, "Paloma", "Gonzalez", "Venezuela", 1);

INSERT Empleado (DNI, Nombre, Apellido, Nacionalidad, idDepartamento)
VALUES (40888977, "Carlos", "Sanchez", "Argentina", 3);

-- 4. Insertar un empleado nuevo en la nómina de trabajo.
INSERT Empleado (DNI, Nombre, Apellido, Nacionalidad, idDepartamento)
VALUES (17668098, "Jose", "David", "Venezuela", 3);

-- Verifico que se hayan insertado
-- select * from Empleado

-- 5. Modificar la nacionalidad de algún empleado.
UPDATE Empleado
SET Nacionalidad = "España"
WHERE DNI = 40888977;

-- 6. Eliminar un departamento.
DELETE FROM Departamento
WHERE IdDepartamento = 4;

-- 7. Conocer los empleados que trabajan en el departamento de “logística” 
SELECT * FROM Empleado
WHERE IdDepartamento = 1;

-- 8. Mostrar todos los departamentos ordenados alfabéticamente.
SELECT * FROM Departamento
ORDER BY Nombre;
