USE [E31B_G7]
GO

INSERT INTO DATOSPERSONALES(IDCOLABORADOR,USUARIO,NOMBRE,FECHANACIMIENTO,GENERO,ESTADOCIVIL,CORREO,TELEFONO,DIRECCION,ACTIVO,USUARIOCREA,USUARIOMODIFICA,FECHACREA,FECHAMODIFICA)
VALUES(45454545,'JPEREZG','Jose Perez Gonzales','1983-06-11','Masculino','Casado','jperezg@gmail.com','999998752','Av. Jose Galvez 765 Lince - Lima',1,11111111,11111111,GETDATE(),GETDATE())
GO

INSERT INTO DATOSPERSONALES(IDCOLABORADOR,USUARIO,NOMBRE,FECHANACIMIENTO,GENERO,ESTADOCIVIL,CORREO,TELEFONO,DIRECCION,ACTIVO,USUARIOCREA,USUARIOMODIFICA,FECHACREA,FECHAMODIFICA)
VALUES(54545454,'KGONZALESC','Katia Gonzales Colareta','2000-09-13','Femenino','Soltera','kgonzalesc@gmail.com','989898989','Av. cuba 1289 Jesús Maria - Lima',1,11111111,11111111,GETDATE(),GETDATE())
GO


INSERT INTO DEPENDIENTES(IDCOLABORADOR,IDDEPENDIENTE,TIPODEPENDENCIA,NOMBRE,FECHANACIMIENTO,GENERO,ESTADOCIVIL,ACTIVO,USUARIOCREA,USUARIOMODIFICA,FECHACREA,FECHAMODIFICA)
VALUES(45454545,46464646,'Esposa','Pilar Villegas Nortel','1985-10-22','Femenino','Casada',1,11111111,11111111,GETDATE(),GETDATE())
GO

INSERT INTO DEPENDIENTES(IDCOLABORADOR,IDDEPENDIENTE,TIPODEPENDENCIA,NOMBRE,FECHANACIMIENTO,GENERO,ESTADOCIVIL,ACTIVO,USUARIOCREA,USUARIOMODIFICA,FECHACREA,FECHAMODIFICA)
VALUES(45454545,47474747,'Hijo','Alexander Perez Villegas','2014-08-06','Masculino','Soltero',1,11111111,11111111,GETDATE(),GETDATE())
GO

INSERT INTO DEPENDIENTES(IDCOLABORADOR,IDDEPENDIENTE,TIPODEPENDENCIA,NOMBRE,FECHANACIMIENTO,GENERO,ESTADOCIVIL,ACTIVO,USUARIOCREA,USUARIOMODIFICA,FECHACREA,FECHAMODIFICA)
VALUES(45454545,48484848,'Hija','Claudia Perez Villegas','2016-03-12','Femenino','Soltera',1,11111111,11111111,GETDATE(),GETDATE())
GO

INSERT INTO DEPENDIENTES(IDCOLABORADOR,IDDEPENDIENTE,TIPODEPENDENCIA,NOMBRE,FECHANACIMIENTO,GENERO,ESTADOCIVIL,ACTIVO,USUARIOCREA,USUARIOMODIFICA,FECHACREA,FECHAMODIFICA)
VALUES(55555555,56565656,'Madre','Maria Colareta Carrales','1972-02-11','Femenino','Viuda',1,11111111,11111111,GETDATE(),GETDATE())
GO

-- select * from DATOSPERSONALES;
-- select * from DEPENDIENTES;

INSERT INTO BOLETASTRABAJADORES(IDCOLABORADOR,OCUPACION,NOMBRES,APELLIDOS,CONSULTAFECHAINICIAL,CONSULTAFECHAFINAL,INGRESOS,DESCUENTOS,NETOAPERCIBIR,APORTES,FECHADEPAGO,FECHACREA,FECHAMODIFICA)
VALUES('54545454','Secretaria','Katia Alejandra','Dolores Grau','2000-09-01','2000-09-30','2500','300','2200','150','2000-09-30' ,GETDATE(),GETDATE())
GO 

--------------------------------------------
--INSERT DESCANSO MEDICO
--------------------------------------------

INSERT INTO [dbo].[TM_DESCANDO_MEDICO]
(IDCOLABORADOR,ORDINAL,FECHA_ATENCION,MOTIVO_DESC,DETALLE_MOTIVO_DESC,FECHA_INICIO_DESC,FECHA_FIN_DESC,CONSTANCIA_DESC_PDF,USUARIOCREA,USUARIOMODIFICA,FECHACREA,FECHAMODIFICA)
VALUES(45454545,1,'2022-03-22','Accidente de Trabajo','Quemadura','2022-03-22','2022-03-31','CDM20220322',11111111,11111111,GETDATE(),GETDATE())
GO

-- Inserción de Registros de la tabla TM_VACACIONES
INSERT INTO [dbo].[TM_VACACIONES]([IDCOLABORADOR],[FECHAALTA],[PERIODO],[FECHAINICIO],[FECHAFIN],[DIAS],[ESTADO],[USUARIOCREA],[USUARIOMODIFICA],[FECHACREA],[FECHAMODIFICA])
     VALUES ('D46632739','20220101',2022,,'20220601','20220603',3,'1',1,getdate(),null,getdate(),null)
GO
INSERT INTO [dbo].[TM_VACACIONES]([IDCOLABORADOR],[FECHAALTA],[PERIODO],[FECHAINICIO],[FECHAFIN],[DIAS],[ESTADO],[USUARIOCREA],[USUARIOMODIFICA],[FECHACREA],[FECHAMODIFICA])
     VALUES ('D46632739','20220101',2022,,'20220701','20220707',7,'1',1,getdate(),null,getdate(),null)
GO

