
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

-- Criar um comando SELECT que retorne APENAS o nome dos clientes da cidade �TUPA�. Utilizar o EXISTS para realizar a condi��o.

SELECT nome
FROM clientes
WHERE EXISTS (
    SELECT 1
    FROM cidades
    WHERE clientes.codigo_Cidade = cidades.codigo_cidade
    AND cidades.nome = 'TUPA'
);