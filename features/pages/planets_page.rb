class Planets
  include HTTParty

  require_relative '../hooks/planets_hook'

  base_uri 'https://swapi.dev/api'

  def get_planets(id = '')
    self.class.get("/planets/#{id}")
  end

  def get_random_id(count)
    count + Random.rand(20)
  end
end
