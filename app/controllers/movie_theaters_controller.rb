class MovieTheatersController < ApplicationController

  def home
    @movie_theater = MovieTheater.first
    @movies = @movie_theater.movies.all
    render :home
  end

  def index
    @admin = Admin.find(params[:id])
    @movie_theaters = @admin.movie_theaters.All
    render: index
  end

  def create
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theater.new(params[:movie_theater])

    if @movie_theater.save
      redirect_to admin_movie_theaters_path
    else
      @errors = @movie_theater.errors.full_messages
      render :new
    end
  end

  def new
    @admin = Admin.find(params[:id])

    @movie_theater = @admin.movie_theater.new

    render :new
  end

  def show
    @admin = Admin.find(params[:admin_id])
    @movie_theater = @admin.movie_theater.find(params[:id])
    @movies = @movie_theater.movies.all

    render :show
  end

  def edit
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theater.find(params[:id])

    render :edit
  end

  def update

    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theater.find(params[:id])

    if @movie_theater.update_attributes!(params[:movie_theater])
      redirect_to admin_movie_theaters_path
    else
      @errors = @movie_theater.errors.full_messages
      render :edit
    end

  end

  def destroy
    @admin = Admin.find(params[:admin_id])

    @movie_theater = @admin.movie_theater.find(params[:id])

    @movie_theater.destroy

    redirect_to admin_movie_theaters_path
  end

end