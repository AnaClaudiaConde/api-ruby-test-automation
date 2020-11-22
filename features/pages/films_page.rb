class Films
  include HTTParty

  require_relative '../hooks/films_hook'

  base_uri API['base_uri']

  def retrieve_films
    self.class.get('/films/')
  end
end
