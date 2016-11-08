class SessionsController < ApplicationController

  def create
    @user = sign_in
    login(@user)
    redirect_to "/users/#{session['id']}"
  end

  def destroy
    logout
    redirect_to '/'
  end

  private

  def sign_in
    HTTParty.post(api_url + '/sessions.json', :body=>{"user"=>{"email"=>params['email'], "password"=>params['password']}})
  end

end
