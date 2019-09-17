Dado("que eu esteja na página inicial do site") do
  @home_page.load
end

Quando("preenche os campos com email {string} e senha {string}") do |email, password|
  @home_page.set(email, password)
end

E("deslogado visualizo o menu esquerdo") do
  @home_page.left_menu
end

Então("deve aparecer o nome") do
  expect(@home_page).to have_content "Juliana"
end

E("logado visualizo o menu esquerdo") do
  @home_page.open_menu
end

Então("deve aparecer a mensagem {string}") do |message|
  expect(@home_page.error).to have_content message
end
