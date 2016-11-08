class SessionsController < ApplicationController

  def create
     p params
     p sign_in
  end

  private

  def sign_in
   HTTParty.post('https://api-goteam.herokuapp.com/api/sessions', :body=>{"user"=>{"email"=>'rachael.stammy@vonrueden.info', "password"=>'password'}})
  end

end
# params['email']
