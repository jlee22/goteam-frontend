class UsersController < ApplicationController

before_action :define_url

  def show
    user_id = params[:id]
    @user = HTTParty.get(@url + "/users/#{user_id}.json")
    @stats = HTTParty.get(@url + "/users/#{user_id}/stats.json")
  end
end

private

def define_url
  @url = "https://api-goteam.herokuapp.com/api"
end
