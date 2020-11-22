class Films
  include HTTParty

  require_relative '../hooks/films_hook'

  base_uri API['base_uri']

  def getFilms
    self.class.get('/films/')
  end
end
