#language: pt
@planets
Funcionalidade: Consulta de planetas
Como usuário do sistema
Quero realizar requisições na API
Para manipular as informações da consulta de planetas

Cenário: Consulta de planetas não existentes
  Quando realizar uma requisição para consultar os planetas
  Entao a API deve retornar uma mensagem 'NOT FOUND' e com o status 404