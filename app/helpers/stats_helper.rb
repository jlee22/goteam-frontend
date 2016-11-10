module StatsHelper

  URL = 'https://api-goteam.herokuapp.com/api'
  # URL = "http://localhost:3001/api"

  def self.list(session)
    HTTParty.get(URL + "/users/"+ session[:id].to_s + "/stats.json?token=" + session[:token].to_s).parsed_response
  end

  def self.create(current_user_id, sport_id)
    HTTParty.post(URL + "/users/#{current_user_id}/stats.json", body: {"sport_id": sport_id})
  end

  def self.post(id, session)
    HTTParty.post(URL + "/sports/#{id}/stats/find.json?token=" + session[:token].to_s, body: {:user_id => session["id"]})
  end

  def self.update(user_id,stat_id, session,active)
    HTTParty.put(URL + "/users/#{user_id}/stats/#{stat_id}.json?token=" + session[:token].to_s, body: {:user_id => session["id"], active: active}).parsed_response
  end
end
