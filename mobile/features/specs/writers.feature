#language: pt

@writers
Funcionalidade: Login
    Para que eu possa visualizar e publicar posts
    Sendo um usuário previamente cadastrado
    Gostaria que fosse possível cessar página de outros autores

@writer_visit
  Cenario: Visitar página escritor
    Dado que eu esteja na página inicial do site
    E deslogado visualizo o menu esquerdo
    Quando preenche os campos com email 'juliana.sequeira_BOLS@compasso.com.br' e senha '123456'    
    E vai para a home
    E procuro o escritor
    Então deve ir para página do escritor

@writer_click
  Cenario: Clicar em autor especifico
    Dado que eu esteja na página inicial do site
    E deslogado visualizo o menu esquerdo
    Quando preenche os campos com email 'juliana.sequeira_BOLS@compasso.com.br' e senha '123456'    
    E vai para a home
    E procuro o escritor 'Kevin'
    Então deve aparecer 'Kevin'

@writer_blog
  Cenario: Clicar em autor especifico
    Dado que eu esteja na página inicial do site
    E deslogado visualizo o menu esquerdo
    Quando preenche os campos com email 'juliana.sequeira_BOLS@compasso.com.br' e senha '123456'    
    E vai para a home
    E procuro o escritor
    E deve redirecionar para página do escritor
    E clico para visualizar o blog
    Então deve listar os artigos do escritor
