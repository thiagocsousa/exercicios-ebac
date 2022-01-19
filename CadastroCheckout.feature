#language : pt

Feature: Cadastro - Tela Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Background: Página de Cadastro
Given que eu acesse a página de cadastro

Scenario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
When eu digitar o nome "Thiago" 
And o sobrenome "Sousa"
And selecionar o país "Brasil"
And digitar o endereço "Av. Martinho Junior 7402"
And a cidade "Teresina"
And a cep "64063-045"
And o telefone "8698151112"
And o endereço de e-mail "thiagocsousa@gmail.com"
Then o checkout pode ser realizado

Scenario: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
When eu digitar o nome "Thiago" 
And o sobrenome "Sousa"
And selecionar o país "Brasil"
And digitar o endereço "Av. Martinho Junior 7402"
And a cidade "Teresina"
And a cep "64063-045"
And o telefone "8698151112"
And o endereço de e-mail "thiagocsousa"
Then deve exibir uma mensagem de erro "E-mail inválido"

Scenario: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 
When eu digitar o nome "Thiago" 
And o sobrenome "Sousa"
And selecionar o país "Brasil"
And digitar o endereço "Av. Martinho Junior 7402"
And a cidade "Teresina"
And a cep "64063-045"
And o telefone "8698151112"
And o endereço de e-mail "thiagocsousa@gmail.com"
Then deve exibir uma mensagem de alerta "Há campos vazios"
