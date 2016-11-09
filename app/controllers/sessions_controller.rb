class SessionsController < ApplicationController

  def create
    @user = sign_in
    login(@user)
    p "----------" * 5
    p @user
    p "----------" * 5
    redirect_to "/users/#{session['id']}"
  end

  def destroy
    logout
    redirect_to '/'
  end

  private

  def sign_in
    HTTParty.post(URL + '/sessions.json', :body=>{"user"=>{"email"=>params['email'], "password"=>params['password']}})
  end

end
