class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!session[:user_id]
  end

  def authenticate
    return if logged_in?
    redirect_to post_path, alert: "ログインしてください"
  end
end
