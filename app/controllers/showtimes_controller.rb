class ShowtimesController < ApplicationController

  def create
    @admin = Admin.find(params[:admin_id])

    @movie_theaters = @admin.movie_theaters.find(params[:movie_theater_id])

    @showtime = @movie_theaters.showtimes.new(params[:showtime])

    if showtime.save
      redirect_to admin_movie_theaters_path(@movie_theater)
    else
      @errors = @movies.errors.full_messages
      render :new
    end
  end

  def new
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @showtime = @movie_theater.showtimes.new

    render :new
  end

  def show
    @movie_theater = MovieTheater.find(params[:movie_theater_id])

    @movie = @movie_theater.movies.find_by(name: params[:name])

    @showtime = @movie.showtimes.find(params[:id])

    render :show
  end

  def edit
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @showtime = @movie_theater.showtimes.find(params[:id])

    render :edit
  end

  def update
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @showtime = @movie_theater.showtimes.find(params[:id])

    if @showtime.update_attributes!(params[:showtime])
      redirect_to admin_movie_theaters_path(@movie_theater)
    else
      @erros = @movie_theater.errors.full_messages
      render :edit
    end
  end

  def destroy
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @showtime = @movie_theater.showtimes.find(params[:id])

    @showtime.destroy

    redirect_to admin_movie_theaters_path(@movie_theater)
  end
end
