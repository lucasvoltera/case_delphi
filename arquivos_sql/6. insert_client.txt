
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

-- Criar um comando INSERT na tabela de clientes de um registro qualquer com todos os campos da tabela. (valores livres)


INSERT INTO clientes (CGC_CPF_cliente, nome, telefone, endereco, bairro, complemento, email, codigo_Cidade, cep)
VALUES ('12345678901', 'João da Silva', '(11) 91234-5678', 'Rua das Flores, 123', 'Centro', 'Apto 101', 'joao@example.com', 1, '12345-678');


select * from clientes;