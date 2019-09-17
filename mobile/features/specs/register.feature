#language: pt

@register
Funcionalidade: Login
    Para que eu possa visualizar e publicar posts
    Sendo um usuário sem cadastro
    Gostaria de fazer o cadastro

@wrong_register
  Esquema do Cenario: Tentar registrar usuários 
    Dado que eu esteja na página inicial do site
    E deslogado visualizo o menu esquerdo
    E clico para fazer cadastro
    E vou para a página de registro
    Quando preencho os campos com email <email>, username <username>, senha <senha>, nome <nome>, biografia <bio>
    Então deve aparecer a mensagem referente ao erro <mensagem>

     Exemplos: 
        |email|username|senha|nome|bio|mensagem|
        |'teste@gmail.com'|''|'123456'|'nome'|'bio'|'Enter an Username'|
        |''|'username'|'123456'|'nome'|'bio'|'Enter an Email'|
        |'teste@gmail.com'|'username'|''|'nome'|'bio'|'Enter an Password'|
        |'teste@gmail'|'username'|'123456'|'nome'|'bio'|'Entered email is not a valid email address.'|
        