class AuditoriumsController < ApplicationController

  def create
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @auditorium = @movie_theater.auditoriums.new(params[:auditorium])

    if @auditorium.save
      redirect_to admin_movie_theaters_path(@movie_theater)
    else
      @errors = @movies.errors.full_messages
      render :new
    end
  end

  def new
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @movie = @movie_theater.auditoriums.new

    render :new
  end

  def edit
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @auditorium = @movie_theater.auditoriums.find(params[:id])

    render :edit
  end

  def update
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @auditorium = @movie_theater.auditoriums.find(params[:id])

    if @auditorium.update_attributes!(params[:auditorium])
      redirect_to admin_movie_theaters_path(@movie_theater)
    else
      @errors = @movie_theater.errors.full_messages
      render :edit
  end

  def destroy
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @showtime = @movie_theater.showtimes.find(params[:id])

    @showtime.destroy

    redirect_to admin_movie_theaters_path(@movie_theater)
  end

end
