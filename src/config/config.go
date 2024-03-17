package config

import (
	"fmt"
	"log"
	"os"
	"strconv"

	"github.com/joho/godotenv"
)

var (
	// StringConexaoBanco é a string de conexão com o MySQL
	StringConexaoBanco = ""

	// Porta onde a API vai estar rodando
	Porta = 0

	// SecretKey é a chave que vai ser usada para assinar o token
	SecretKey []byte
)

// Carregar vai inicializar as variáveis de ambiente
func Carregar() {
	var erro error

	if erro = godotenv.Load(); erro != nil {
		log.Fatal(erro)
	}

	Porta, erro = strconv.Atoi(os.Getenv("API_PORT"))
	if erro != nil {
		Porta = 9000
	}

	/*
		StringConexaoBanco = fmt.Sprintf("%s:%s@/%s?charset=utf8&parseTime=True&loc=Local",
			os.Getenv("DB_USUARIO"),
			os.Getenv("DB_SENHA"),
			os.Getenv("DB_NOME"),
		) */

	host := os.Getenv("DB_HOST_BANCO")
	port := os.Getenv("DB_PORTA_BANCO")
	user := os.Getenv("DB_USUARIO")
	password := os.Getenv("DB_SENHA")
	dbname := os.Getenv("DB_NOME_BANCO")

	StringConexaoBanco = fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=disable",
		host, port, user, password, dbname)

	SecretKey = []byte(os.Getenv("SECRET_KEY"))
}
