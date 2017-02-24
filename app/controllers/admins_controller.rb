class AdminsController < ApplicationController
  include SessionHelper

  def show

    @admin = Admin.find
    @theaters = @admin.movie_theaters

    render :show

  end

end
