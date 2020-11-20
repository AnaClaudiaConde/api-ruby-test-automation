class Films
  include HTTParty

  require_relative '../hooks/films_hook'

  base_uri 'https://swapi.dev/api'

  def getFilms
    self.class.get('/films/')
  end
end
