class UsersController < ApplicationController

  def show
    user_id = params[:id]
    @user = HTTParty.get("http://localhost:3000/api/users/#{user_id}.json")
    @stats = HTTParty.get("http://localhost:3000/api/users/#{user_id}/stats.json")
  end
end
