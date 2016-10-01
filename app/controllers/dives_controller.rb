class DivesController < ApplicationController

  def index
  #   @dives = User.dives
  end

  def show
    @dive = Dive.find(params[:id])
  end

  def edit
    @dive = Dive.find(params[:id])
  end

  def update
    @dive = Dive.find(params[:id])
  end

  def new
    @dive = Dive.new
  end

  def create
    @dive = Dive.new(dive_params)

    if @dive.save
      flash[:notice] = "New dive scheduled"
      redirect_to dife_path(@dive)
    else
      flash[:notice] = @dive.errors.full_messages.join(", ")
      render :new
    end
  end

  def destroy
    Dive.find(params[:id]).destroy

    flash[:notice] = "Dive event deleted"
    redirect_to dives_path
  end

  private

  def dive_params
    params.require(:dive).permit(:name, :latitude, :longitude, :time, :description)
  end

end
