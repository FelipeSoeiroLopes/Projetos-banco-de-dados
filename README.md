# Descrição do Código SQL - Banco de Dados `atividade2`

Este documento descreve as operações realizadas para criar e manipular o banco de dados `atividade2`, que armazena informações sobre funcionários.

## 1. Criação do Banco de Dados

- **Criação do banco de dados**: Um novo banco de dados chamado `atividade2` é criado para armazenar os dados dos funcionários.
    ```sql
    CREATE DATABASE atividade2;
    ```

## 2. Seleção do Banco de Dados

- **Seleção do banco de dados**: O banco de dados `atividade2` é selecionado para que as operações subsequentes sejam realizadas nele.
    ```sql
    USE atividade2;
    ```

## 3. Criação da Tabela `pessoas`

- **Criação da tabela**: Uma tabela chamada `pessoas` é criada com colunas para armazenar informações dos funcionários.
    ```sql
    CREATE TABLE pessoas (
        Codigo INTEGER(50), 
        nome VARCHAR(75),
        cpf INTEGER(11),
        rg INTEGER(9),
        email VARCHAR(50)
    );
    ```

## 4. Visualização de Dados na Tabela `pessoas`

- **Visualização**: Um comando é executado para visualizar todos os registros da tabela `pessoas`, que inicialmente está vazia.
    ```sql
    SELECT * FROM atividade2.pessoas;
    ```

## 5. Renomeando a Tabela `pessoas` para `funcionario`

- **Renomeação da tabela**: A tabela `pessoas` é renomeada para `funcionario` para refletir melhor o conteúdo que ela armazena.
    ```sql
    RENAME TABLE pessoas TO funcionario;
    ```

## 6. Visualização de Dados na Tabela `funcionario`

- **Visualização**: Um comando é executado para visualizar todos os registros da tabela `funcionario`.
    ```sql
    SELECT * FROM atividade2.funcionario;
    ```

## 7. Alterando a Estrutura da Tabela `funcionario`

- **Adicionando a coluna `telefone`**: Uma nova coluna chamada `telefone` é adicionada à tabela `funcionario`.
    ```sql
    ALTER TABLE funcionario
    ADD telefone INTEGER(11);
    ```

- **Adicionando a coluna `data_nascimento`**: Uma nova coluna chamada `data_nascimento` é adicionada à tabela `funcionario`.
    ```sql
    ALTER TABLE funcionario
    ADD data_nascimento DATE;
    ```

- **Modificando colunas existentes**: As colunas existentes são alteradas para garantir que sejam obrigatórias (NOT NULL).
    ```sql
    ALTER TABLE funcionario MODIFY COLUMN codigo INTEGER(50) NOT NULL;
    ALTER TABLE funcionario MODIFY COLUMN nome VARCHAR(75) NOT NULL;
    ALTER TABLE funcionario MODIFY COLUMN cpf VARCHAR(11) NOT NULL;
    ALTER TABLE funcionario MODIFY COLUMN rg INTEGER(9) NOT NULL;
    ALTER TABLE funcionario MODIFY COLUMN email VARCHAR(50) NOT NULL;
    ALTER TABLE funcionario MODIFY COLUMN telefone INTEGER(11) NOT NULL;
    ```

## 8. Removendo a Coluna `rg`

- **Remoção da coluna**: A coluna `rg` é removida da tabela `funcionario`, pois não será mais necessária.
    ```sql
    ALTER TABLE funcionario
    DROP rg;
    ```

## 9. Alterando o Nome da Coluna `telefone` para `celular`

- **Renomeação da coluna**: A coluna `telefone` é renomeada para `celular`.
    ```sql
    ALTER TABLE funcionario
    CHANGE telefone celular INTEGER(11) NOT NULL;
    ```

- **Modificando a coluna `celular` para tipo `VARCHAR`**: O tipo da coluna `celular` é alterado para `VARCHAR(11)` para permitir formatação.
    ```sql
    ALTER TABLE funcionario
    MODIFY celular VARCHAR(11) NOT NULL;
    ```

## 10. Inserindo Dados na Tabela `funcionario`

- **Inserção de dados**: Um registro de exemplo é inserido na tabela `funcionario`.
    ```sql
    INSERT INTO funcionario(codigo, nome, cpf, email, celular, data_nascimento) 
    VALUES (2, 'Victor', 11122233399, 'ovitoooo@gmail.com', 11970644758, '1998-01-05');
    ```

## 11. Descrição da Estrutura da Tabela `funcionario`

- **Descrição da tabela**: Um comando é executado para descrever a estrutura da tabela `funcionario`, mostrando os tipos de dados e restrições.
    ```sql
    DESCRIBE funcionario;
    ```

---

Este documento fornece uma visão geral das operações realizadas no banco de dados `atividade2`, incluindo a criação, modificação e manipulação de dados na tabela `funcionario`.
