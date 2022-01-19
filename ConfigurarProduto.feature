#language: pt

Feature: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
Para depois inserir no carrinho

Scenario: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Given que já eu escolhi o produto no site da EBAC-SHOP
When eu selecionar a cor "Orange"
And o tamanho "XS"
And a quantidade "1"
Then o produto pode ser adicionado ao carrinho

Scenario: Deve permitir apenas 10 produtos por venda
Given que já existem 10 produtos no meu carrinho
When eu selecionar um novo produto
Then deve emitir uma mensagem de apenas 10 produtos por venda

Scenario: Quando eu clicar no botão “limpar” deve voltar ao estado original
Given que já eu escolhi o produto no site da EBAC-SHOP
And já selecionei a cor "Orange" ou o tamanho "S"
When eu clicar no botão "Limpar"
Then todas as seleções são desmarcadas
