

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


SELECT nome
FROM clientes
WHERE EXISTS (
    SELECT 1
    FROM cidades
    WHERE clientes.codigo_Cidade = cidades.codigo_cidade
    AND cidades.nome = 'TUPA'
);


SELECT clientes.nome AS nome_cliente, cidades.nome AS nome_cidade
FROM clientes
INNER JOIN cidades ON clientes.codigo_Cidade = cidades.codigo_cidade;


SELECT codigo_cliente, nome
FROM clientes
ORDER BY nome;


DELETE FROM clientes
WHERE codigo_cliente BETWEEN 100 AND 200;


UPDATE cidades
SET estado = 'SP'
WHERE estado = 'PR';


INSERT INTO clientes (CGC_CPF_cliente, nome, telefone, endereco, bairro, complemento, email, codigo_Cidade, cep)
VALUES ('12345678901', 'João da Silva', '(11) 91234-5678', 'Rua das Flores, 123', 'Centro', 'Apto 101', 'joao@example.com', 1, '12345-678');

select * from clientes;


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

EXEC GerenciarCidades 'DELETE', @CodigoCidade = 11;

select * from cidades;


SELECT 
  clientes.Codigo_Cliente as codCliente,
  clientes.CGC_CPF_Cliente as cpfCnpjCliente,
  clientes.nome as nomeCliente,
  clientes.telefone as telefoneCliente,
  clientes.endereco as enderecoCliente,
  clientes.bairro as bairroCliente,
  clientes.complemento as complementoCliente,
  clientes.email as emailCliente,
  clientes.cep as cepCliente,
  cidades.codigo_cidade as codCidade,
  cidades.nome as nomeCidade,
  cidades.estado as nomeEstadoCidade,
  cidades.cep_Inicial as cepIncialCidade,
  cidades.cep_Final as cepFinalCidade
FROM CLIENTES
INNER JOIN CIDADES ON CLIENTES.codigo_Cidade = cidades.codigo_cidade
WHERE
--clientes.CODIGO_CLIENTE BETWEEN :CLIENTE_INICIAL AND :CLIENTE_FINAL AND
--cidades.CODIGO_CIDADE BETWEEN :CIDADE_INICIAL AND :CIDADE_FINAL AND
ESTADO = :Estado;
