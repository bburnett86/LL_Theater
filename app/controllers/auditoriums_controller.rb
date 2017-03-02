class AuditoriumsController < ApplicationController

  before_action :authorize

  def index
    @auditoriums = Auditorium.all

    render :index
  end

  def create

    @auditorium = Auditorium.new(capacity: params[:auditorium][:capacity])

    if @auditorium.save
      redirect_to auditoriums_path
    else
      @errors = @auditorium.errors.full_messages
      render :new
    end
  end

  def new

    @auditorium = Auditorium.new

    render :new
  end

  def edit

    @auditorium = Auditorium.find(params[:id])

    render :edit
  end

  def show

    @auditorium = Auditorium.find(params[:id])

    render :show
  end

  def update

    @auditorium = Auditorium.find(params[:id])

    if @auditorium.update_attributes!(capacity: params[:auditorium][:capacity])
      redirect_to auditoriums_path
    else
      @errors = @auditorium.errors.full_messages
      render :edit
    end
  end

  def destroy

    @auditorium = Auditorium.find(params[:id])

    @auditorium.destroy

    redirect_to auditoriums_path
  end

end
