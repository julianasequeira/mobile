E("clico para fazer cadastro") do
  @home_page.register_modal
end

E("vou para a página de registro") do
  expect(@result_page).to have_content 'Register'
end

Quando("preencho os campos com email {string}, username {string}, senha {string}, nome {string}, biografia {string}") do |email, username, password, name, bio|
  @home_page.register(email, username, password, name, bio)
end

Então("deve aparecer a mensagem referente ao erro {string}") do |menssagem|
  expect(@home_page.register_error).to have_content menssagem
end
