module StatsHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.list(session)
    HTTParty.get(URL + "/users/"+ session[:id].to_s + "/stats.json?token=" + session[:token].to_s).parsed_response
  end

  def self.create(current_user_id, sport_id)
    HTTParty.post(URL + "/users/#{current_user_id}/stats.json", body: {"sport_id": sport_id})
  end

  def self.get(id, current_user_id)
    HTTParty.post(URL + "/sports/#{id}/stats/find.json", body: {:user_id => "#{current_user_id}"})
  end

end
