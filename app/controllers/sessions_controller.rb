class SessionsController < ApplicationController

  def create
    @user = sign_in
    redirect_to "/users/#{@user['id']}"
  end

  private

  def sign_in
    HTTParty.post(api_url + '/sessions.json', :body=>{"user"=>{"email"=>params['email'], "password"=>params['password']}})
  end

end
