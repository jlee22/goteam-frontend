class UsersController < ApplicationController
  include UsersHelper
  def show
    @user = UsersHelper.get(session)
    @stats = StatsHelper.list(session)
    @matches = MatchesHelper.list(session)
    @upcoming_matches = []
    @past_matches = []
    p "------------------"
    p DateTime.now
    p "------------------"
    @matches.each do |match|
      match.each do |k,v|
        if v['date'] > DateTime.now.strftime("%d/%m/%Y %H:%M") && @upcoming_matches.length < 3
          @upcoming_matches << match
        elsif v['date'] < DateTime.now.strftime("%d/%m/%Y %H:%M") && @past_matches.length < 3
          @past_matches << match
        end
      end
    end
  end

  def create
    @user = UsersHelper.post({"user"=>
    {"first_name"=>params['first_name'], "last_name"=>params['last_name'],"email"=>params['email'], "city"=>params['city'], "street"=>params['street'], "state"=>params['state'], "zip"=>params['zip'], "phone"=>params['phone'], "password"=>params['password']}})
    if @user['id'] != nil
      redirect_to root_path
    else
      render 'new'
    end
  end
end
