class DashboardController < ApplicationController
  def index
    # require 'pry'; binding.pry
    @user = User.find_by_id(params[:user_id])
  end
end
