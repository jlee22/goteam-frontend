class StatsController < ApplicationController

  def update
    p "HIT UPDATE ROUTE!"

    p HTTParty.put(api_url + "/users/#{params["user_id"]}/matches/#{params["id"]}", body: {active: params["active"]} )
  end

end
