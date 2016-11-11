class SessionsController < ApplicationController

  def create
    @user = sign_in
    p @user
    if @user.parsed_response["message"]
      flash[:notice] = "Wrong Email or Password"
      redirect_to "/"
    else
    login(@user)
    p "----------" * 5
    p @user
    p "----------" * 5
    redirect_to "/users/#{session['id']}"
  end
  end

  def destroy
    logout
    redirect_to '/'
  end

  private

  def sign_in
    HTTParty.post(URL + '/sessions.json', :body=>{"email"=>params['email'], "password"=>params['password']})
  end

end
