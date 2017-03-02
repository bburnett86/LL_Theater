class SessionController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by(username: params[:user][:username]).try(:authenticate, params[:user][:password])
    if @user
      session[:user_id] = @user.id
      redirect_to (:root)
    else
      @errors = ["Incorrect Username / Password combination."]
      render :new
    end
  end

  def logout
    session.delete(:user_id)
    redirect_to(:root)
  end

end
