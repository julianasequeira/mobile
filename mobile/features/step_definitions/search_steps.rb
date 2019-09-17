E("vai para a home") do
  expect(@home_page).to have_content "FROM PEOPLE YOU FOLLOW"
end

E("pesquiso o post {string}") do |post|
  @home_page.search_post(post)
end

E("pesquiso o autor {string}") do |writer|
  @home_page.search_writer(writer)
end

E("pesquiso a palavra {string}") do |word|
  @home_page.search_word(word)
end

E("procuro o escritor {string}") do |writer_search|
  @home_page.writer_click(writer_search)
end

Então("deve aparecer a previa do post") do
  expect(@result_page).to have_content 'Timeline Of Facebook Controversies'
end

Então("deve aparecer {string}") do |writer|
  expect(@result_page.text.downcase).to have_content writer.downcase
end

Então("deve aparecer os posts do blog") do
  expect(@result_page.posts).not_to be_empty
end

Então("deve aparecer mensagem de nenhum resultado") do
  expect(@result_page.nothing).to have_content 'different keyword'
end
