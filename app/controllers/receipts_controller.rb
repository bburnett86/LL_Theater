class ReceiptsController < ApplicationController

  before_action :authorize, only: [:index, :movie_index]

  def index
    @receipts = Receipt.all
    render :index
  end

  def movie_index
    @movie = Movie.find(params[:movie_id])
    @showtime = Showtime.find(params[:showtime_id])
    @receipts = @showtime.receipts.all
    render :movie_index
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @showtime = @movie.showtimes.find(params[:showtime_id])
    @receipt = @showtime.receipts.new
    render :new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @showtime = @movie.showtimes.find(params[:showtime_id])
    @receipt = @showtime.receipts.new(showtime_id: @showtime.id, name: params[:receipt][:name] , email: params[:receipt][:email] , cc_info: params[:receipt][:cc_info] , cc_exp_date: params[:receipt][:cc_exp_date])
    if @receipt.save
      p "hi"
      ReceiptMailer.registration_confirmation_email(@receipt).deliver_now
      redirect_to movie_path(@movie)
    else
      @errors = @receipt.errors.full_messages
      render :new
    end
  end
end
