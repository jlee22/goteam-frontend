class IndexController < ApplicationController

  def index
    @session = '' #Session.new
    @sports = SportsHelper.list
  end

  def about
  end

end

