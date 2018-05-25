class TrailsController < ApplicationController
  def index
    @trails = Trail.all
  end

  def show
    @trail = Trail.find(params[:id])
  end

  def new
    @trail = Trail.new
  end

  def create
    @trail = Trail.new(trails_params)

    if @trail.save
      redirect_to trails_path
    else 
      render :new
    end
  end

  private

  def trails_params
    params.require(:trail).permit(:title, :mileage, :description)
  end

end
