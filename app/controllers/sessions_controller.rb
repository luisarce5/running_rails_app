class SessionsController < ApplicationController
  def new #login form
  end

  def create
    # user puts in email and password
    # create a new session if they match
    user = User.find_by_user_name(params[:user_name]) # do not worry about strong params because we are not putting it into database
    # binding.pry
    if user && user.authenticate(params[:password]) #authenticate is a bcrypt method
      session[:user_id] = user.id
      redirect_to("/")

    else
      redirect_to("/login")
    end
  end

  def destroy # logout
    session[:user_id] = nil
    redirect_to('/')
  end

end
