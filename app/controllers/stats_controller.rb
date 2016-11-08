class StatsController < ApplicationController

  before_action :define_url

  def update
    p "HIT UPDATE ROUTE!"
    p HTTParty.put(@url + "/users/#{params["user_id"]}/stats/#{params["id"]}", body: {active: params["active"]} )
  end

  private

  def define_url
    @url = "https://api-goteam.herokuapp.com/api"
  end
end
