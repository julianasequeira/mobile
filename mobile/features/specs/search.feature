#language: pt

@search
Funcionalidade: Login
    Para que eu possa visualizar e publicar posts
    Sendo um usuário previamente cadastrado
    Gostaria que fosse possível pesquisar posts

@search_post
  Cenario: Buscar post
    Dado que eu esteja na página inicial do site
    E deslogado visualizo o menu esquerdo
    Quando preenche os campos com email 'juliana.sequeira_BOLS@compasso.com.br' e senha '123456'    
    E vai para a home
    E pesquiso o post 'Timeline Of Facebook Controversies'
    Então deve aparecer a previa do post

@search_word
  Cenario: Buscar autor
    Dado que eu esteja na página inicial do site
    E deslogado visualizo o menu esquerdo
    Quando preenche os campos com email 'juliana.sequeira_BOLS@compasso.com.br' e senha '123456'    
    E vai para a home
    E pesquiso a palavra 'the'
    Então deve aparecer os posts do blog

@search_wrong_word
  Cenario: Buscar autor inexistente
    Dado que eu esteja na página inicial do site
    E deslogado visualizo o menu esquerdo
    Quando preenche os campos com email 'juliana.sequeira_BOLS@compasso.com.br' e senha '123456'    
    E vai para a home
    E pesquiso a palavra 'dsahdsadasdasd'
    Então deve aparecer mensagem de nenhum resultado

@search_writer
  Cenario: Buscar autor
    Dado que eu esteja na página inicial do site
    E deslogado visualizo o menu esquerdo
    Quando preenche os campos com email 'juliana.sequeira_BOLS@compasso.com.br' e senha '123456'    
    E vai para a home
    E pesquiso o autor 'Kevin'
    Então deve aparecer 'kevin'

@search_wrong_writer
  Cenario: Buscar autor
    Dado que eu esteja na página inicial do site
    E deslogado visualizo o menu esquerdo
    Quando preenche os campos com email 'juliana.sequeira_BOLS@compasso.com.br' e senha '123456'    
    E vai para a home
    E pesquiso o autor 'Olavo'
    Então deve aparecer mensagem de nenhum resultado
