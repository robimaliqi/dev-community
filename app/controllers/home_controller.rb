class HomeController < ApplicationController
  def index
    @users = User.limit(8).order(:created_at)
  end
end
