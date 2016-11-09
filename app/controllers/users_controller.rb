class UsersController < ApplicationController

  def show
    @user = UsersHelper.get(current_user['id'])
    @stats = StatsHelper.list(current_user['id'])
    @matches = MatchesHelper.list(current_user['id'])
    @upcoming_matches = []
    @past_matches = []
    p "----------" * 5
    p @matches
    p "----------" * 5
    # I want
    @matches.each do |match|
      match.each do |k,v|
        if v['date'] > DateTime.now && @upcoming_matches.length < 3
          @upcoming_matches << match
        elsif v['date'] < DateTime.now && @past_matches.length < 3
          @past_matches << match
        end
      end
    end
  end

  def create
    @user = UsersHelper.post({"user"=>
    {"first_name"=>params['first_name'], "last_name"=>params['last_name'],"email"=>params['email'], "city"=>params['city'], "street"=>params['street'], "state"=>params['state'], "zip"=>params['zip'], "phone"=>params['phone'],"email"=>params['email'], "password"=>params['password']}})
    if @user['id'] != nil
      redirect_to root_path
    else
      render 'new'
    end
  end
end
