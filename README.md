# README - Atividade2: Criação e Manipulação de Banco de Dados

Este README detalha o processo de criação e manipulação de um banco de dados chamado `atividade2`, onde foi criada e alterada uma tabela de funcionários.

---

## 1. Criação do Banco de Dados

Primeiro, criamos um banco de dados chamado `atividade2` para armazenar os dados dos funcionários.

```sql
CREATE DATABASE atividade2;
Isso cria o banco de dados onde todas as tabelas e dados necessários serão armazenados.

2. Seleção do Banco de Dados
Após criar o banco de dados, é necessário informar ao sistema de gerenciamento de banco de dados (SGBD) que usaremos o banco de dados recém-criado.

sql
Copy
USE atividade2;
Este comando configura o banco de dados atividade2 como o banco ativo para operações subsequentes.

3. Criação da Tabela pessoas
Com o banco de dados configurado, criamos uma tabela chamada pessoas, que terá as colunas para armazenar as informações dos funcionários.

sql
Copy
CREATE TABLE pessoas (
    Codigo INTEGER(50),
    nome VARCHAR(75),
    cpf INTEGER(11),
    rg INTEGER(9),
    email VARCHAR(50)
);
Aqui estamos criando uma tabela com as seguintes colunas:

Codigo: Número identificador (integer) do funcionário.

nome: Nome do funcionário (varchar de até 75 caracteres).

cpf: CPF do funcionário (integer de até 11 caracteres).

rg: RG do funcionário (integer de até 9 caracteres).

email: Endereço de e-mail do funcionário (varchar de até 50 caracteres).

4. Visualização de Dados na Tabela pessoas
Com a tabela criada, podemos visualizar o conteúdo da tabela, que, nesse momento, estará vazio.

sql
Copy
SELECT * FROM atividade2.pessoas;
Este comando seleciona todos os registros da tabela pessoas (nesse momento, a tabela está vazia).

5. Renomeando a Tabela pessoas para funcionario
Em seguida, renomeamos a tabela pessoas para funcionario, pois a tabela armazenará informações de funcionários especificamente.

sql
Copy
RENAME TABLE pessoas TO funcionario;
Agora a tabela se chama funcionario e irá conter dados relacionados aos funcionários.

6. Visualização de Dados na Tabela funcionario
Após a renomeação da tabela, podemos visualizar os dados da nova tabela funcionario.

sql
Copy
SELECT * FROM atividade2.funcionario;
7. Alterando a Estrutura da Tabela funcionario
Agora, vamos alterar a estrutura da tabela para adicionar novas colunas e fazer modificações em colunas existentes.

7.1 Adicionando a Coluna telefone
Adicionamos a coluna telefone para armazenar o número de telefone do funcionário.

sql
Copy
ALTER TABLE funcionario
ADD telefone INTEGER(11);
7.2 Adicionando a Coluna data_nascimento
Agora, adicionamos a coluna data_nascimento para armazenar a data de nascimento do funcionário.

sql
Copy
ALTER TABLE funcionario
ADD data_nascimento DATE;
7.3 Modificando as Colunas Existentes
Alteramos as colunas existentes para garantir que possuam as restrições corretas e tipos adequados.

sql
Copy
ALTER TABLE funcionario MODIFY COLUMN codigo INTEGER(50) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN nome VARCHAR(75) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN cpf VARCHAR(11) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN rg INTEGER(9) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN email VARCHAR(50) NOT NULL;
ALTER TABLE funcionario MODIFY COLUMN telefone INTEGER(11) NOT NULL;
Aqui estamos alterando as colunas para garantir que:

codigo, nome, cpf, rg, email e telefone sejam obrigatórios (NOT NULL).

8. Removendo a Coluna rg
Decidimos remover a coluna rg, pois não será mais necessária.

sql
Copy
ALTER TABLE funcionario
DROP rg;
Agora, a tabela funcionario não possui mais a coluna rg.

9. Alterando o Nome da Coluna telefone para celular
Alteramos o nome da coluna telefone para celular, a fim de refletir melhor o conteúdo dessa coluna.

sql
Copy
ALTER TABLE funcionario
CHANGE telefone celular INTEGER(11) NOT NULL;
9.1 Modificando a Coluna celular para Tipo VARCHAR
Mudamos o tipo da coluna celular para VARCHAR(11) para armazenar números de telefone com possível formatação (como parênteses e hífens).

sql
Copy
ALTER TABLE funcionario
MODIFY celular VARCHAR(11) NOT NULL;
10. Inserindo Dados na Tabela funcionario
Agora, inserimos um registro de exemplo na tabela funcionario para testar a tabela e suas colunas.

sql
Copy
INSERT INTO funcionario(codigo, nome, cpf, email, celular, data_nascimento) 
VALUES (2, 'victor', 11122233399, 'ovitoooo@gmail.com', 11970644758, '1998-01-05');
Neste exemplo, estamos inserindo os seguintes dados:

codigo: 2

nome: Victor

cpf: 11122233399

email: ovitoooo@gmail.com

celular: 11970644758

data_nascimento: 5 de janeiro de 1998

11. Descrição da Estrutura da Tabela funcionario
Por fim, podemos verificar a estrutura da tabela funcionario, incluindo os tipos de dados e restrições.

sql
Copy
DESCRIBE funcionario;
Este comando exibe a descrição da tabela funcionario, incluindo nomes de colunas, tipos de dados e quaisquer restrições (como NOT NULL).

Conclusão
Neste exercício, criamos e manipulamos um banco de dados e uma tabela que armazena dados de funcionários. As operações realizadas incluem a criação de tabelas, adição e modificação de colunas, renomeação de tabelas, exclusão de colunas e inserção de registros. Essas operações são essenciais para a administração de banco de dados no dia a dia.

Copy

### Como usar:
1. Copie o conteúdo acima.
2. Cole em um arquivo chamado `README.md`.
3. Salve o arquivo no diretório do seu projeto.

Agora você tem um arquivo `README.md` completo e bem formatado para documentar sua atividade de banco de dados!
