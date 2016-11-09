module StatsHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.list(current_user_id)
    HTTParty.get(URL + "/users/#{current_user_id}/stats.json")
  end

  def self.get(id, current_user_id)
    HTTParty.post(URL + "/sports/#{id}/stats/find.json", body: {:user_id => "#{current_user_id}"})
  end

end
