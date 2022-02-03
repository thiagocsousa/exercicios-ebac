#language: pt

Funcionalidade: Cadastro - Tela Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto: Página de Cadastro
Dado que eu acesse a página de cadastro

Cenário: Cadastro com todos os campos obrigatórios 
Quando eu preencher todos os campos obrigatórios corretamente 
Então o checkout pode ser realizado

Cenário: Cadastro com email inválido
Quando eu preencher campo email errado
Então deve exibir uma mensagem de erro "E-mail inválido"

Cenário: Cadastro com campos vazios. 
Quando eu deixar de preencher um campo obrigatório
Então deve exibir uma mensagem de alerta "Há campos vazios"
