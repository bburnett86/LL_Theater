class ShowtimesController < ApplicationController

  before_action :authorize, except: [:show]

  def create
    @auditorium = Auditorium.find(params[:auditorium_id])
    @movie = Movie.find_by(name: params[:showtime][:movie_id])

    @start = DateTime.new(params[:showtime]["start(1i)"].to_i, params[:showtime]["start(2i)"].to_i, params[:showtime]["start(3i)"].to_i, params[:showtime]["start(4i)"].to_i, params[:showtime]["start(5i)"].to_i)

    @finish = @start + @movie.hours.hours + @movie.minutes.minutes

    @showtime = @auditorium.showtimes.new(price: params[:showtime][:price], start: @start, finish: @finish, auditorium: @auditorium, movie: @movie)

    if @showtime.save!(price: params[:showtime][:price], start: @start, finish: @finish, auditorium: @auditorium, movie: @movie)
      redirect_to movie_path(@movie)
    else
      @errors = @showtime.errors.full_messages
      render :new
    end
  end

  def new

    @movies = Movie.all

    @auditorium = Auditorium.find(params[:auditorium_id])

    @showtimes = @auditorium.showtimes.all

    @showtime = @auditorium.showtimes.new

    render :new
  end

  def show
    @movie = Movie.find(params[:movie_id])

    @showtime = @movie.showtimes.find(params[:id])

    @auditorium = @showtime.auditorium

    render :show
  end

  def edit
    @movie = Movie.find(params[:movie_id])

    @movies = Movie.all

    @auditoriums = Auditorium.all

    @showtime = @movie.showtimes.find(params[:id])

    render :edit
  end

  def update
    @movie = Movie.find(params[:movie_id])

    @showtime = @movie.showtimes.find(params[:id])

    @auditorium = @showtime.auditorium

    @start = DateTime.new(params[:showtime]["start(1i)"].to_i, params[:showtime]["start(2i)"].to_i, params[:showtime]["start(3i)"].to_i, params[:showtime]["start(4i)"].to_i, params[:showtime]["start(5i)"].to_i)

    @finish = @start + @movie.hours.hours + @movie.minutes.minutes

    if @showtime.update_attributes!(price: params[:showtime][:price], start: @start, finish: @finish, auditorium: @auditorium, movie: @movie)

      redirect_to movie_path(@movie)
    else
      @erros = @showtime.errors.full_messages
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:movie_id])

    @showtime = @movie.showtimes.find(params[:id])

    @showtime.destroy

    redirect_to movie_path(@movie)
  end
end
