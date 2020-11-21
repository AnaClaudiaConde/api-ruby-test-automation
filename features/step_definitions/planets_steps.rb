Quando('realizar uma requisição para consultar os planetas') do
  @response = @planets.get_planets

#   puts "TESTE: #{@response}"
#   puts "Count: #{@response['count']}"

end

Entao('a API deve retornar uma mensagem {string} e com o status {int}') do |message, int|
  id_random = @planets.get_random_id(@response['count'])
  result = @planets.get_planets(id_random)

  expect(result.code).to eq(int)
  expect(result.message).to eq(message)
end