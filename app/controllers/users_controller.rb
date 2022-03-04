class UsersController < ApplicationController
  before_action :authenticate

  def index
    @posts = Post.find_by(user_id: current_user.id) if session[:user_id]
  end
end
