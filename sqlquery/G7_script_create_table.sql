 
-- Drop table DATOSPERSONALES;
CREATE TABLE DATOSPERSONALES
(
	IDCOLABORADOR       INT PRIMARY KEY,
	USUARIO							VARCHAR(50),
	NOMBRE              VARCHAR(256),
	FECHANACIMIENTO			DATE,
	GENERO			        VARCHAR(50),
	ESTADOCIVIL        	VARCHAR(50),
	CORREO							VARCHAR(256),
	TELEFONO						VARCHAR(9),
	DIRECCION						VARCHAR(256),
	ACTIVO              VARCHAR(1),
	USUARIOCREA         INT,
	USUARIOMODIFICA    	INT,
	FECHACREA           DATETIME,
	FECHAMODIFICA       DATETIME
)
GO

-- Drop table DEPENDIENTES;
CREATE TABLE DEPENDIENTES
(	
	IDCOLABORADOR					VARCHAR(20),
  IDDEPENDIENTE         VARCHAR(20),
	TIPODEPENDENCIA       VARCHAR(50),
	NOMBRE 					      VARCHAR(256),
	FECHANACIMIENTO				DATE,
	GENERO                VARCHAR(50),
	ESTADOCIVIL           VARCHAR(50),
  ACTIVO                VARCHAR(1),
	USUARIOCREA           INT,
	USUARIOMODIFICA    		INT,
	FECHACREA             DATETIME,
	FECHAMODIFICA       	DATETIME,
  CONSTRAINT PKD_COLABORADOR PRIMARY KEY (IDCOLABORADOR,IDDEPENDIENTE)
)
GO

--Tabla de Historico de Periodos del Colaborador
CREATE TABLE TM_COLABORADOR
(
	IDCOLABORADOR			VARCHAR(20) ,
	FECHAALTA				  DATE ,
	NOMBRE					  VARCHAR(254) NOT NULL,
	APEPARTERNO				VARCHAR(254) NOT NULL,
	APEMARTERNO				VARCHAR(254) NOT NULL,
	FECNACIMIENTO     DATE,
	ESTADO					  VARCHAR(1),
	USUARIOCREA				INT,
	USUARIOMODIFICA		INT,
	FECHACREA				  DATETIME,
	FECHAMODIFICA			DATETIME,
	CONSTRAINT PK_COLABORADOR PRIMARY KEY (IDCOLABORADOR,FECHAALTA)
)

GO
--Tabla de Historico de vacaciones del Colaborador
CREATE TABLE TM_VACACIONES
(
	IDCOLABORADOR       VARCHAR(20),
	FECHAALTA           DATE,
	PERIODO             INT,
	FECHAINICIO         DATE,
	FECHAFIN            DATE,
	DIAS                INT,
	ESTADO				      VARCHAR(1),
	USUARIOCREA         INT,
	USUARIOMODIFICA     INT,
	FECHACREA           DATETIME,
	FECHAMODIFICA       DATETIME,
	CONSTRAINT PK_VACACIONES PRIMARY KEY (IDCOLABORADOR,FECHAALTA,PERIODO,FECHAINICIO)
)

--Tabla de Registro de Descansos Medicos
CREATE TABLE TM_DESCANDO_MEDICO
(
	IDCOLABORADOR       VARCHAR(20),
	ORDINAL				      INT,
	FECHA_ATENCION		  DATETIME,
	MOTIVO_DESC			    VARCHAR(256),
	DETALLE_MOTIVO_DESC	VARCHAR(256),
	FECHA_INICIO_DESC	  DATETIME,
	FECHA_FIN_DESC		  DATETIME,
	CONSTANCIA_DESC_PDF	VARCHAR(256),
	
	CONSTRAINT PK_DESCANDO_MEDICO PRIMARY KEY (IDCOLABORADOR,ORDINAL)	
)
GO

-- Tabla de Registro de Boletas 
CREATE TABLE BOLETASTRABAJADORES
(
	IDCOLABORADOR               VARCHAR(20),
	OCUPACION                   VARCHAR (50),
	NOMBRES                     VARCHAR(256),
	APELLIDOS                   VARCHAR(256),
    CONSULTAFECHAINICIAL        DATE,
	CONSULTAFECHAFINAL          DATE,
	INGRESOS                    INT,
	DESCUENTOS                  INT,
	NETOAPERCIBIR               INT,
	APORTES                     INT,
	FECHADEPAGO                 DATE,
	FECHACREA                   DATETIME,
	FECHAMODIFICA               DATETIME,
	
	CONSTRAINT PK_BOLETAS_EMPLEADOS PRIMARY KEY (IDCOLABORADOR)	
)
GO
