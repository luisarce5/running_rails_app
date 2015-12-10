class SessionsController < ApplicationController
  def new #login  form
  end

  def create
    # user puts in email and password
    user = User.find_by_user_name(params[:user_name])
    # do not be concerted about requiring strong parameters since we are not saving to database
    if user && user.authenticate(params[:password])
      # authenticate with bcrypt
      session[:user_id] = user.id
      redirect_to("/")

    else
      redirect_to("/login")
    end
  end

  def destroy #logout
    session[:user_id] = nil
    redirect_to('/')
  end

end
