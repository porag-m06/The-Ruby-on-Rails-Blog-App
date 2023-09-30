class ApplicationController < ActionController::Base
  def current_user
    @current_user = User.first
    puts @current_user
  end
end
