
CREATE TABLE cidades (
    codigo_cidade INT IDENTITY(1,1) PRIMARY KEY,
    nome NVARCHAR(100),
    estado NVARCHAR(50),
    cep_Inicial NVARCHAR(10),
    cep_Final NVARCHAR(10)
);

CREATE TABLE clientes (
    codigo_cliente INT IDENTITY(1,1) PRIMARY KEY,
    CGC_CPF_cliente NVARCHAR(20),
    nome NVARCHAR(100),
    telefone NVARCHAR(20),
    endereco NVARCHAR(100),
    bairro NVARCHAR(50),
    complemento NVARCHAR(50),
    email NVARCHAR(100),
    codigo_Cidade INT,
    cep NVARCHAR(10),
    FOREIGN KEY (codigo_Cidade) REFERENCES cidades (codigo_cidade)
);

-- Criar um procedimento armazenado (procedure) para realizar as opera��es de INSERT, UPDATE E DELETE na tabela de CIDADES. Criar uma procedure �nica que fa�a todas as opera��es.


DROP PROCEDURE GerenciarCidades;

CREATE PROCEDURE GerenciarCidades (
    @Operacao NVARCHAR(10),          
    @CodigoCidade INT = NULL,        
    @Nome NVARCHAR(100) = NULL,             
    @Estado NVARCHAR(50) = NULL,            
    @CepInicial NVARCHAR(10) = NULL,        
    @CepFinal NVARCHAR(10) = NULL           
)
AS
BEGIN
    IF @Operacao = 'INSERT'
    BEGIN
        IF @Nome IS NOT NULL AND @Estado IS NOT NULL AND @CepInicial IS NOT NULL AND @CepFinal IS NOT NULL
        BEGIN
            INSERT INTO cidades (nome, estado, cep_Inicial, cep_Final)
            VALUES (@Nome, @Estado, @CepInicial, @CepFinal);
        END
    END
    ELSE IF @Operacao = 'UPDATE'
    BEGIN
        IF @CodigoCidade IS NOT NULL AND @Nome IS NOT NULL AND @Estado IS NOT NULL AND @CepInicial IS NOT NULL AND @CepFinal IS NOT NULL
        BEGIN
            UPDATE cidades
            SET nome = @Nome, estado = @Estado, cep_Inicial = @CepInicial, cep_Final = @CepFinal
            WHERE codigo_cidade = @CodigoCidade;
        END
    END
    ELSE IF @Operacao = 'DELETE'
    BEGIN
        IF @CodigoCidade IS NOT NULL
        BEGIN
            DELETE FROM cidades
            WHERE codigo_cidade = @CodigoCidade;
        END
    END
END;


EXEC GerenciarCidades 'INSERT', NULL, 'Nome da Cidade', 'Estado', 'CEP Inicial', 'CEP Final';

select * from cidades;

EXEC GerenciarCidades 'UPDATE', @CodigoCidade = 1, @Nome = 'Novo Nome', @Estado = 'Novo Estado', @CepInicial = 'Novo CEP Inicial', @CepFinal = 'Novo CEP Final';

select * from cidades;

EXEC GerenciarCidades 'DELETE', @CodigoCidade = 1;

select * from cidades;