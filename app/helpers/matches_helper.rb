module MatchesHelper

  URL = 'https://api-goteam.herokuapp.com/api'
  # URL = "http://localhost:3001/api"

  def self.list(session)
    HTTParty.get(URL + "/users/"+ session[:id].to_s + "/matches.json?token=" + session[:token].to_s).parsed_response
  end

  def self.get(session, id)
    HTTParty.get(URL + "/users/" + session[:id].to_s + "/matches/#{id}.json?token=" + session[:token].to_s).parsed_response
  end

  def self.create(session,sport_id)
    HTTParty.post(URL + "/users/"+ session[:id].to_s + "/tefams.json?token=" + session[:token].to_s,body: {sport_id: sport_id}).parsed_response
  end

  def self.put(id, session,home_team,away_team)
    HTTParty.put(URL + "/users/"+ session[:id].to_s + "/matches/#{id}.json?token=" + session[:token].to_s,body: {"home_team": home_team,
              "away_team": away_team}).parsed_response
  end

end
