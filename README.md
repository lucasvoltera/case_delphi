
# Processo Seletivo SINQIA

## Introdução

Este projeto foi desenvolvido para o processo seletivo da SINQIA/Tupã, com o objetivo de criar um sistema capaz de cadastrar cidades e clientes, além de produzir relatórios sobre eles.


## Limitações

Infelizmente, não foi possível utilizar o Delphi XE7, pois não havia a opção de baixá-lo no site oficial da Embarcadero [1]. Portanto, o projeto foi desenvolvido no Delphi 11, mas também foi testado no Delphi 12.


## Estrutura de arquivos

Na pasta src, encontra-se todo o código fonte utilizado no projeto. O arquivo pode ser executado ao clicar no executável (.exe). As outras pastas dentro de src contêm os códigos referentes às telas criadas.

As seguintes telas foram desenvolvidas:

* Tela principal: esta tela contém um menu que direciona para as outras telas.
* Cadastro de Cidades: responsável pelo cadastro, edição e exclusão de cidades.
* Consulta de Cidades: utilizada para consultas das cidades registradas (por nome ou estado).
* Cadastro de Clientes: responsável pelo cadastro, edição e exclusão de clientes.
* Consulta de Clientes: utilizada para consultas dos clientes registrados (por nome, CPF, cidade, e-mail, CEP ou estado).
* Relatório: utilizada para criar um relatório, utilizando o ReportBuilder, de um intervalo de clientes de um determinado estado, podendo ser agrupado por cidade ou não.
* Data Model: contém todos os componentes necessários para se conectar ao banco de dados SQL Server e ao ReportBuilder.

## Como rodar

É possível executar o projeto abrindo-o através do arquivo .exe. No entanto, para compilá-lo, são necessárias duas etapas:

1. Configurar o banco de dados na unidade unitDM.
2. Baixar a versão do ReportBuilder compatível com a sua versão do Delphi [2].


## Referências

[1] https://www.embarcadero.com/products/delphi/previous-versions

[2] https://www.digital-metaphors.com/download-trial#Standard