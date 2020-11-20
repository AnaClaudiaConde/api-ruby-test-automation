#language: pt

@films
Funcionalidade: Consulta de filmes
Como usuário do sistema
Quero realizar requisições na API
Para manipular as informações da consulta de filmes

Cenário: Consultar todos os filmes 
  Quando realizar uma requisição para consultar os filmes
  Entao armazeno os titulos dos filmes em uma variável
  E a API deve retornar todos os filmes respondendo com o código 200