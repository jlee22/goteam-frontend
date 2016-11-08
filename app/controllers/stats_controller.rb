class StatsController < ApplicationController

  before_action :define_url

  def update
    p "HIT UPDATE ROUTE!"
    # if request.xhr?
    p @url + "/users/#{params["user_id"]}/stats/#{params["id"]}"
      p HTTParty.put(@url + "/users/#{params["user_id"]}/stats/#{params["id"]}", body: {active: params["active"]} )
    # end
  end

  private

  def define_url
    @url = "https://api-goteam.herokuapp.com/api"
  end
end
