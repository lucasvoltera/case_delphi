# Processo Seletivo SINQIA

## Introdução

Este projeto foi desenvolvido para o processo seletivo da SINQIA utilizando `Delphi` e `SQL`, com o objetivo de criar um sistema capaz de cadastrar cidades e clientes, além de produzir relatórios sobre eles.

## Limitações

Infelizmente, não foi possível utilizar o `Delphi XE7`, pois não havia a opção de baixá-lo no site oficial da Embarcadero [1]. Portanto, o projeto foi desenvolvido no `Delphi 11`, mas também foi testado no `Delphi 12`.

## Download de Dependências

Os arquivos de dependência podem ser baixados nessa pasta do google drive criada:

https://drive.google.com/drive/folders/1_x-2rn-K8AzrFcxBTAL2ICIjZOz61_c5?usp=sharing


## Estrutura de arquivos

Os arquivos foram estruturados de forma simples, basicamente foram divididos em funções de `relatório`, `cliente` e `cidades`. Dentro de cada uma dessas pastas, há as telas relacionadas a esses agentes do sistema (`cadastro` e/ou `consulta`). A `Tela Principal` e o `Data Model` encontram-se na pasta `main`.

As seguintes telas foram desenvolvidas:

- `Tela principal`: esta tela contém um menu que direciona para as outras telas.
- `Cadastro de Cidades`: responsável pelo cadastro, edição e exclusão de cidades.
- `Consulta de Cidades`: utilizada para consultas das cidades registradas (por nome ou estado).
- `Cadastro de Clientes`: responsável pelo cadastro, edição e exclusão de clientes.
- `Consulta de Clientes`: utilizada para consultas dos clientes registrados (por nome, CPF, cidade, e-mail, CEP ou estado).
- `Relatório`: utilizada para criar um relatório, utilizando o ReportBuilder, de um intervalo de clientes de um determinado estado, podendo ser agrupado por cidade ou não.
- `Data Model`: contém todos os componentes necessários para se conectar ao banco de dados SQL Server e ao ReportBuilder.

Além disso, pastas como `logica_de_programacao` e `arquivos_sql` contêm os arquivos das outras questões do processo seletivo. Em `logica_de_programação`, há um arquivo de texto contendo o algoritmo passo-a-passo para trocar pneus. E em `arquivos_sql`, há todas as respostas para as perguntas de SQL, em arquivos com a extensão .txt e .sql, cada uma respectivamente enumerada.

## Como rodar

Primeiramente, é necessário criar as tabelas do banco de dados da seguinte forma:

```
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
```

Após isso, é necessário configurar o seu banco de dados no `Data Model` na `unitDM` e baixar a versão do `ReportBuilder` compatível com o seu `Delphi`. O `ReportBuilder` pode ser encontrado aqui [2].

O projeto pode ser executado de forma compilada na IDE ou através do .exe encontrado em `Win32/debug/case_delphi`.


## Referências

[1] https://www.embarcadero.com/products/delphi/previous-versions

[2] https://www.digital-metaphors.com/download-trial#Standard
