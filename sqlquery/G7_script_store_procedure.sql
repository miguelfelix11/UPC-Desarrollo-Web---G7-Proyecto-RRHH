
-- DROP PROC USP_ObtenerDatosPersonales;
CREATE PROC USP_ObtenerDatosPersonales
(
	@IDCOLABORADOR VARCHAR(20)
)
AS
	SELECT	P.IDCOLABORADOR,
          P.USUARIO,
			    P.NOMBRE,
			    P.FECHANACIMIENTO,
			    P.GENERO,
			    P.ESTADOCIVIL,
			    P.TELEFONO,
			    P.CORREO,
			    P.DIRECCION,
          P.ACTIVO,
          P.USUARIOCREA,
          P.USUARIOMODIFICA,
          P.FECHACREA,
          P.FECHAMODIFICA

	FROM	DATOSPERSONALES P
	WHERE	P.IDCOLABORADOR = @IDCOLABORADOR
  AND P.ACTIVO='1'
GO
--------------------------------------------
-- DROP PROC USP_ObtenerDependientes;
CREATE PROC USP_ObtenerDependientes
(
	@IDCOLABORADOR VARCHAR(20)
)
AS
	SELECT
          P.IDCOLABORADOR,
          P.IDDEPENDIENTE,
			    P.TIPODEPENDENCIA,
			    P.NOMBRE,
			    P.FECHANACIMIENTO,
			    P.GENERO,
			    P.ESTADOCIVIL,
          P.ACTIVO,
          P.USUARIOCREA,
          P.USUARIOMODIFICA,
          P.FECHACREA,
          P.FECHAMODIFICA
          
	FROM	DEPENDIENTES P
	WHERE	P.IDCOLABORADOR = @IDCOLABORADOR
  AND P.ACTIVO='1'
GO
-------------------------------------------

--DROP PROC USP_ObtenerTMDescansoMedico;
CREATE PROC USP_ObtenerTMDescansoMedico
(
	@IDCOLABORADOR VARCHAR(20)
)
AS
	SELECT
			P.IDCOLABORADOR,
			P.ORDINAL,
			P.FECHA_ATENCION,
			P.MOTIVO_DESC,
			P.DETALLE_MOTIVO_DESC,
			P.FECHA_INICIO_DESC,
			P.FECHA_FIN_DESC,
			P.CONSTANCIA_DESC_PDF
                   
	FROM	TM_DESCANDO_MEDICO P
	WHERE	P.IDCOLABORADOR = @IDCOLABORADOR
 
GO
--Create de SP de Insertar Vacaciones
 CREATE PROC [dbo].[usp_InsertarVacaciones]
(
	@IDCOLABORADOR VARCHAR(20),
	@FECHAINICIO DATE,
	@FECHAFIN DATE,
	@DIAS INT,
	@USUARIOCREA INT
)
AS
	INSERT INTO [dbo].[TM_VACACIONES]
           (IDCOLABORADOR
           ,FECHAALTA
           ,PERIODO
           ,FECHAINICIO
           ,FECHAFIN
           ,DIAS
		   ,ESTADO
           ,USUARIOCREA
           ,FECHACREA
           )
     VALUES
           (@IDCOLABORADOR
           ,'20220101'
           ,2022
           ,@FECHAINICIO
           ,@FECHAFIN
           ,@DIAS
		   ,'1'
           ,@USUARIOCREA
           ,GETDATE()
           )
GO
