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

  def edit
    @trail = Trail.find(params[:id])
  end

  def update
    @trail = Trail.find(params[:id])

    if @trail.update(trails_params)
      redirect_to trails_path
    else
      render :edit
    end
  end

  private

  def trails_params
    params.require(:trail).permit(:title, :mileage, :description)
  end

end
