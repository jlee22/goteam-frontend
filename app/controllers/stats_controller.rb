class StatsController < ApplicationController

  def update
    p "HIT UPDATE ROUTE!"
    p "$"*20
    p URL + "/users/#{params["user_id"]}/stats/#{params["id"]}"
    # STAT UPDATE NOT WORKING YET
    p HTTParty.put(URL + "/users/#{params["user_id"]}/stats/#{params["id"]}", body: {"active" => params["active"]}} )
  end

end
