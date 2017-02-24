class MoviesController < ApplicationController

  def create
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @movie = @movie_theater.movies.new(params[:movie])

    if @movie.save
      redirect_to admin_movie_theaters_path(@movie_theater)
    else
      @errors = @movies.errors.full_messages
      render :new
    end
  end

  def new
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theater.find(params :movie_theater_id)

    @movie = @movie_theater.movies.new

    render :new
  end

  def show
    @movie_theater = MovieTheater.find(params[:movie_theater_id])

    @movie = @movie_theater.movies.find_by(name: params[:name])

    render :show
  end

  def edit
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @movie = @movie_theater.movies.find(params[:id])

    render :edit
  end

  def update
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @movie = @movie_theater.movies.find(params[:id])

    if @movie.update_attributes!(params[:movie])
      redirect_to admin_movie_theaters_path(@movie_theater)
    else
      @errors = @movie_theater.errors.full_messages
      render :edit
    end

  end

  def destroy
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theaters.find(params[:movie_theater_id])

    @movie = @movie_theater.movies.find(params[:movie_theater_id])

    @movie.destroy

    redirect_to admin_movie_theaters_path(@movie_theater)
  end

end
