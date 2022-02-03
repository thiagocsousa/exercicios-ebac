#language: pt

Funcionalidade: Login na Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: Página de Autenticação
Dado que eu acesse a página de autenticação da plataforma

Esquema do Cenário: Autenticação de múltiplos usuários
Quando eu digitar o <usuario> 
E a <senha> 
Então deve ser direcionado para a tela de checkout

Exemplos:
    | usuario | senha |
    | "joao@ebac.com.br"  | "123456" |
    | "maria@ebac.com.br"  | "654321" |
    | "thiago@ebac.com.br"  | "123456" |
    | "fabio@ebac.com.br"  | "654321" |

Cenário: Usuário ou senha inválidos
Quando eu digitar o usuário ou senha inexistentse
Então deve exibir uma mensagem de erro "Usuário e/ou senha inválidos"    