class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # or =
    # if current_user is already a thing, then do not look for it
    # that way you only find the current_user one time#
    # if current_user is not true, then do the comman User.find
  end

  helper_method(:current_user)
  # this calls the helper methos on User when the action loads

  def authorize
    redirect_to '/login' unless current_user
    # if there is a user, then it will never redirect
  end

end # end of Class
