CREATE TABLE Credores (
    Id             INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    IsActive       BIT           NOT NULL DEFAULT 1,
    NomeCredor     NVARCHAR(200) NOT NULL,
    IsPessoaFisica BIT           NOT NULL DEFAULT 0,
    IsRecorrente   BIT           NOT NULL DEFAULT 0,
    IsInstFin      BIT           NOT NULL DEFAULT 0,
    CodigoInstFin  NVARCHAR(50)  NULL,
    DhCriacao      DATETIME2     NULL DEFAULT SYSDATETIME(),
    DhAtualizacao  DATETIME2     NULL
);

INSERT INTO Credores 
    (IsActive, NomeCredor, IsPessoaFisica, IsRecorrente, IsInstFin, CodigoInstFin, DhCriacao, DhAtualizacao) 
VALUES 
    (1, 'Fernando', 1, 0, 0, NULL, NULL, NULL)

SELECT * FROM Credores