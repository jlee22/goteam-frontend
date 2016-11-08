module StatsHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.list(current_user_id)
    HTTParty.get(URL + "/users/#{current_user_id}/stats.json")
  end

end
