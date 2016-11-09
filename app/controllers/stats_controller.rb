class StatsController < ApplicationController

  def update
    p "HIT UPDATE ROUTE!"
    # STAT UPDATE NOT WORKING YET
    response = HTTParty.put(URL + "/users/#{params["user_id"]}/stats/#{params["id"]}.json", body:{"active" => params["active"]})
    p '-----------------------'
    p response
    p response['active']
    p '-----------------------'
  end

end
