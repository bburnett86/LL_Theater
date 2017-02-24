class ReceiptsController < ApplicationController
  def index
    @admin = Admin.find(params[:id])
    @receipts = Receipt.all
    render :index
  end

  def show
    @admin = Admin.find(params[:admin_id])
    @receipt = @admin.receipts.find(params[:id])
    @showtime = @receipt.showtime
    render :show
  end

  def new
    @movie_theater = MovieTheater.find(params[:movie_theater_id])
    @movie = @movie_theater.movies.find_by(name: params[movie_name])
    @showtime = @movie.showtimes.find(params[:showtime_id])
    @receipt = @showtime.receipts.new
    render :new
  end

  def create
    @movie_theater = MovieTheater.find(params[:movie_theater_id])
    @movie = @movie_theater.movies.find_by(name: params[movie_name])
    @showtime = @movie.showtimes.find(params[:showtime_id])
    # @receipt = @showtime.receipts.new(movie_theater: @movie_theater.id, movie_id: @movie.id, showtime_id: @showtime.id, first_name: params[:first_name], last_name: params[:last_name] , email: params[:email] , cc_info: params[:cc_info] , cc_exp_date: params[:cc_exp_date] , sale_price: params[:sale_price])
    @receipt = @showtime.receipts.new(:receipt)
    if @receipt.save
      redirect_to (:root)
    else
      @errors = @receipt.errors.full_messages
      render :new
    end
  end
end
