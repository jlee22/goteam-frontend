class StatsController < ApplicationController

  def update
    response = HTTParty.put(URL + "/users/#{params["user_id"]}/stats/#{params["id"]}.json", body:{"active" => params["active"]})
  end

end
