class StatsController < ApplicationController

  def update
    p "HIT UPDATE ROUTE!"
    HTTParty.put(api_url + "/users/#{params["user_id"]}/stats/#{params["id"]}", body: {active: params["active"]} )
  end

end
