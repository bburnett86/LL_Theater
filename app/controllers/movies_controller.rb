class MoviesController < ApplicationController

  before_action :authorize, except: [:home, :show]

  def home
    @movies = Movie.all

    render :home
  end

  def index
    @movies = Movie.all

    render :index
  end

  def create
    @movie = Movie.new(name: params[:movie][:name], pic_url: params[:movie][:pic_url], hours: params[:movie][:hours], minutes: params[:movie][:minutes], starring: params[:movie][:starring], tagline: params[:movie][:tagline], plot: params[:movie][:plot])

    if @movie.save
      redirect_to movies_path
    else
      @errors = @errors.full_messages
      render :new
    end
  end

  def new
    @movie = Movie.new

    render :new
  end

  def show
    @movie = Movie.find(params[:id])

    @showtimes = @movie.showtimes.all

    render :show
  end

  def edit
    @movie = Movie.find(params[:id])

    render :edit
  end

  def update


    @movie = Movie.find(params[:id])

    if @movie.update_attributes!(name: params[:movie][:name], pic_url: params[:movie][:pic_url], hours: params[:movie][:hours], minutes: params[:movie][:minutes], starring: params[:movie][:starring], tagline: params[:movie][:tagline], plot: params[:movie][:plot])

      redirect_to movie_path(@movie)
    else
      @errors = @movie.errors.full_messages
      render :edit
    end

  end

  def destroy


    @movie = Movie.find(params[:id])

    @movie.destroy

    redirect_to (:root)
  end

end
