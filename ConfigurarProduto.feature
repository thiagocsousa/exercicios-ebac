#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleções de cor, tamanho e quantidade
Dado que já eu escolhi o produto no site da EBAC-SHOP
Quando eu selecionar a cor "Orange"
E o tamanho "XS"
E a quantidade "1"
Então o produto pode ser adicionado ao carrinho

Cenário: Apenas 10 produtos por venda
Dado que já existem 10 produtos no meu carrinho
Quando eu selecionar um novo produto
Então deve emitir uma mensagem de apenas 10 produtos por venda

Cenário: Clique no botão “limpar”
Dado que já eu escolhi o produto no site da EBAC-SHOP
E já selecionei a cor "Orange" ou o tamanho "S"
Quando eu clicar no botão "Limpar"
Então todas as seleções são desmarcadas
