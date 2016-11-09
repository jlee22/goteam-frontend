class IndexController < ApplicationController

  def index
    @session = '' #Session.new
    @sports = SportsHelper.list

    @matches

    @sports_matches = ''
  end

  def about
  end

end

