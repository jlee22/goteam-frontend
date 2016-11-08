module MatchesHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.list(current_user_id)
    @matches = HTTParty.get(URL + "/users/#{current_user_id}/matches.json")
  end

  def self.get(id)
    @match = HTTParty.get(URL + "/matches/#{id}.json")
  end
end
