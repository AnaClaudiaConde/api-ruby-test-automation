Quando('realizar uma requisição para consultar os filmes') do
  @response = @films.retrieve_films
end

Entao('armazeno os titulos dos filmes em uma variável') do
  titles = @response['results'].map { |film| film['title'] }

  expect(@response['count']).to eq(titles.size)
end

Entao('a API deve retornar todos os filmes respondendo com o código {int}') do |int|
  expect(@response.code).to eq(int)
end
