module MatchesHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.list
    @matches = HTTParty.get(URL + "/matches.json")
  end

  def self.get(id)
    @match = HTTParty.get(URL + "/matches/#{id}.json")
  end
end
