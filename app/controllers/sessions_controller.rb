class SessionsController < ApplicationController

  def create
    @user = sign_in
    p @user
    redirect "/users/#{@user}"
  end

  private

  def sign_in
    HTTParty.post('https://api-goteam.herokuapp.com/api/sessions', :body=>{"user"=>{"email"=>'rachael.stammy@vonrueden.info', "password"=>'password'}})
  end

end
