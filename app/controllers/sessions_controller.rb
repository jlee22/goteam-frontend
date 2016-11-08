class SessionsController < ApplicationController

  def create
<<<<<<< HEAD
     p params
     p sign_in
=======
    @user = sign_in
    p @user
    redirect "/users/#{@user}"
>>>>>>> aeea90887fe432305d53e57fdc36517db787ce7b
  end

  private

  def sign_in
    HTTParty.post('https://api-goteam.herokuapp.com/api/sessions', :body=>{"user"=>{"email"=>'rachael.stammy@vonrueden.info', "password"=>'password'}})
  end

end
