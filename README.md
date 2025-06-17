<div align="center">
  <h1>📊 Banco de Dados atividade2</h1>
  <p><strong>Sistema de Gerenciamento de Funcionários</strong></p>
  <p>
    <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
    <img src="https://img.shields.io/badge/SQL-F80000?style=for-the-badge&logo=oracle&logoColor=white"/>
  </p>
  <p>
    <img src="https://img.shields.io/badge/Status-Concluído-2ECC71?style=for-the-badge&logo=checkmarx&logoColor=white"/>
    <img src="https://img.shields.io/badge/Versão-1.0.0-blue?style=for-the-badge&logo=semantic-version&logoColor=white"/>
  </p>
</div>

---

## 📚 Sobre o Projeto

Sistema de banco de dados desenvolvido para gerenciar informações de funcionários, incluindo dados pessoais e contato. Implementado com MySQL, oferece uma estrutura robusta para cadastro e consulta de colaboradores.

### 🎯 Principais Recursos

```
┌──────────────────────────────────┐
│ 👤 Cadastro de Funcionários     │
│ 📝 Gestão de Dados Pessoais     │
│ 📱 Informações de Contato       │
│ 🔄 Alterações Estruturais       │
│ 🔍 Consultas Otimizadas         │
└──────────────────────────────────┘
```

## 🛠️ Estrutura do Banco

### Tabela `funcionario`
| Coluna           | Tipo         | Restrição |
|------------------|--------------|-----------|
| codigo          | INTEGER(50)  | NOT NULL  |
| nome            | VARCHAR(75)  | NOT NULL  |
| cpf             | VARCHAR(11)  | NOT NULL  |
| email           | VARCHAR(50)  | NOT NULL  |
| celular         | VARCHAR(11)  | NOT NULL  |
| data_nascimento | DATE         | -         |

## 💻 Principais Comandos

### Criação e Configuração
```sql
CREATE DATABASE atividade2;
USE atividade2;
```

### Manipulação de Estrutura
```sql
CREATE TABLE pessoas (...);
RENAME TABLE pessoas TO funcionario;
ALTER TABLE funcionario ADD column ...;
```

### Inserção de Dados
```sql
INSERT INTO funcionario 
VALUES (2, 'Victor', '11122233399', 'ovitoooo@gmail.com', '11970644758', '1998-01-05');
```

## 📋 Funcionalidades

### 🔧 Operações Implementadas
- ✅ Criação de banco de dados
- ✅ Definição de tabelas
- ✅ Alteração de estrutura
- ✅ Inserção de registros
- ✅ Consultas de dados

### 🔄 Modificações Estruturais
```
┌─────────────────────────────┐
│ ➕ Adição de Colunas       │
│ 🔄 Renomeação de Tabelas   │
│ ✏️ Alteração de Tipos      │
│ ❌ Remoção de Campos       │
└─────────────────────────────┘
```

## ⚡ Performance

- Tipos de dados otimizados
- Estrutura normalizada
- Constraints apropriadas
- Campos indexados

## 👨‍💻 Autor

<img src="https://img.shields.io/badge/-Felipe%20Soeiro%20Lopes-181717?style=flat-square&logo=github&logoColor=white"/>

## 📊 Status do Projeto

![Status](https://img.shields.io/badge/Status-Finalizado-2ECC71?style=for-the-badge&logo=check-circle&logoColor=white)
![Última Atualização](https://img.shields.io/badge/Última%20Atualização-Junho%202025-blue?style=for-the-badge&logo=clockify&logoColor=white)

---

<div align="center">
  <sub>Desenvolvido para fins educacionais e práticas de banco de dados</sub>
</div>
