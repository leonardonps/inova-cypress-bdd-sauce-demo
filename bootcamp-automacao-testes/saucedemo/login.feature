#language: pt
Funcionalidade: Login de acesso ao site "Swag Labs"
    Como usuário
    Quero logar no site
    Para fazer compras

Contexto: Dado que o usuário esteja na tela de Login

    Cenario: Autenticação válida

        Quando digitar "standard_user" no campo "Username" 
        E digitar "secret_sauce" no campo "Password"
        E clicar no botão de "Login"
        Então o sistema deve realizar a autenticação do usuário adequadamente
        E exibir a tela de produtos com o título "Products"

    Cenario: Autenticação inválida - Usuário inexistente

        Quando digitar "standard_user123" no campo "Username"
        E digitar "secret_sauce" no campo "Password"
        E clicar no botão de "Login"
        Então o sistema deve exibir uma mensagem alertando que o usuário e senha não combinam com qualquer usuário da aplicação

    Cenario: Autenticação inválida - Senha inválida

        Quando digitar "standard_user" no campo "Username"
        E digitar "secret_sauce" no campo "Password123"
        E clicar no botão de "Login"
        Então o sistema deve exibir uma mensagem alertando que o usuário e senha não combinam com qualquer usuário da aplicação

    Cenario: Autenticação inválida - Usuário em branco

        Quando digitar "secret_sauce" no campo "Password"
        E clicar no botão de "Login"
        Então o sistema deve exibir uma informação alertando que o campo "Username" é obrigatório


Esquema do Cenário: Logins inválidos com tabela
Quando eu digitar o <usuario>
E a senha <senha>
Então deve ser exibida a mensagem <mensagem>
Exemplos:
| usuario | senha | mensagem |
| "usuario_invalido" | "secret_sauce" | "Epic sadface: Username and password do not match any user in this service" |
| "standard_user" | "senha_invalida" | "Epic sadface: Username and password do not match any user in this service" |
| "" | "secret_sauce" | "Epic sadface: Username is required" |
| "standard_user" | "" | "Epic sadface: Password is required" |



 