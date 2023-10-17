class HomeController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.limit(8).order(:created_at)
  end
end
