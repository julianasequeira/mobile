#language: pt

@login
Funcionalidade: Login
    Para que eu possa visualizar e publicar posts
    Sendo um usuário previamente cadastrado
    Gostaria que fosse possível logar a partir da página inicial do site

@login_ok
    Cenario: Acesso ok
        Dado que eu esteja na página inicial do site
        E deslogado visualizo o menu esquerdo
        Quando preenche os campos com email 'juliana.sequeira_BOLS@compasso.com.br' e senha '123456'
        E logado visualizo o menu esquerdo
        Então deve aparecer o nome

@login_nok
    Esquema do Cenario: Acesso nok
        Dado que eu esteja na página inicial do site
        E deslogado visualizo o menu esquerdo
        Quando preenche os campos com email <email> e senha <senha>
        Então deve aparecer a mensagem <mensagem>

        Exemplos: 
        |email|senha|mensagem|
        |'juliana@gmail.com'|'123456'|'Invalid email address'|
        |'juliana.sequeira_BOLS@compasso.com.br'|'123458'|'password you entered for the email address juliana.sequeira_BOLS@compasso.com.br is incorrect'|
        |'julianasequeira'|'123458'|'the password you entered for the username julianasequeira is incorrect'|
        |'juliana'|'123458'|'invalid username.'|
        |'juliana.sequeira_BOLS@compasso.com.br'|''|'Enter an Password.'|
        |''|'123456'|'Enter an Username.'|
