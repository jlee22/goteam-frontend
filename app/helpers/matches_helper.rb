module MatchesHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.list(session)
    @matches = HTTParty.get(URL + "/users/"+ session[:id].to_s + "/matches.json?token=" + session[:token].to_s).parsed_response
  end

  def self.get(current_user_id, id)
    @match = HTTParty.get(URL + "/users/#{current_user_id}/matches/#{id}.json")
  end

end
