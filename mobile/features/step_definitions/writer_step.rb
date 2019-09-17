E("procuro o escritor") do
  @home_page.writer
end

E("deve redirecionar para página do escritor") do
  expect(@result_page).to have_content 'Shad'
end

E("clico para visualizar o blog") do
  @result_page.blog
end

Então("deve ir para página do escritor") do 
  expect(@result_page).to have_content 'Shad'
end

Então("deve listar os artigos do escritor") do
  expect(@result_page.articles).not_to be_empty
end
