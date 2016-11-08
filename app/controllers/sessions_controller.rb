class SessionsController < ApplicationController
  # helper_method :current_user
  def create
    @user = sign_in
    current_user=(@user)
    login(current_user)
    redirect_to "/users/#{@user['id']}"
  end

  private

  def sign_in
    HTTParty.post(api_url + '/sessions.json', :body=>{"user"=>{"email"=>params['email'], "password"=>params['password']}})
  end

end
