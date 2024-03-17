# dev-book-api

Essa API é um CRUD de usuários e publicações para um banco de dados postgres. Essa aplicação é resultante do curso https://www.udemy.com/course/aprenda-golang-do-zero-desenvolva-uma-aplicacao-completa/?couponCode=KEEPLEARNING

# Pré-requisistos
- golang
- postgres

# Rodando a aplicação
- Executar a criação das tabelas no arquivo sql.sql
- Criar o arquivo .env com os seguintes valores
  ```
  DB_HOST_BANCO=hostDoBanco
  DB_NOME_BANCO=nomeDoSchemaDoBanco
  DB_PORTA_BANCO=5432
  DB_USUARIO=usuarioDoBanco
  DB_SENHA=senhaDoBanco
  DB_NOME=nomeDoBanco
  API_PORT=portaDaAplicacao
  SECRET_KEY=hashCodeEmFormatoHex
  ```
- Na raiz do projeto rode go run main.go

O projeto vai estar rodando na porta que escolheu, por exemplo, localhost:5000
