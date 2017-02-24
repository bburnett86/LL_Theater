class SessionController < ApplicationController

  include SessionHelper

  def new
    @admin = Admin.new
    p @admin
    render :new
  end

  def create
  @admin = Admin.find_by(username: params[:username]).try(:authenticate, params[:password])
    if @admin
      session[:user_id] = @admin.id
      redirect_to(:root)
    else
      @errors = ["Incorrect Username / Password combination."]
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to(:root)
  end

end
