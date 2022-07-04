
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
          P.CONSTANCIA_DESC_PDF,
                   
	FROM	DEPENDIENTES P
	WHERE	P.IDCOLABORADOR = @IDCOLABORADOR
  AND P.ACTIVO='1'
GO
