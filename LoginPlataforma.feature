#language: pt

Feature: Login na Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Background: Página de Autenticação
Given que eu acesse a página de autenticação da plataforma

Scenario Outline: Autenticar múltiplos usuários
When eu digitar o <usuario> 
And a <senha> 
Then deve ser direcionado para a tela de checkout

Examples:
    | usuario | senha |
    | "joao@ebac.com.br"  | "123456" |
    | "maria@ebac.com.br"  | "654321" |
    | "thiago@ebac.com.br"  | "123456" |
    | "fabio@ebac.com.br"  | "654321" |

Scenario: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
When eu digitar o usuário "joaoninguem@ebac.com.br"
And a senha "12345678"
Then deve exibir uma mensagem de erro "Usuário e/ou senha inválidos"    