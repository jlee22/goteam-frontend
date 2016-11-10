module MatchesHelper

  # URL = 'https://api-goteam.herokuapp.com/api'
  URL = "http://localhost:3001/api"

  def self.list(current_user_id)
    @matches = HTTParty.get(URL + "/users/#{current_user_id}/matches.json")
  end

  def self.get(current_user_id, id)
    @match = HTTParty.get(URL + "/users/#{current_user_id}/matches/#{id}.json")
  end
end
