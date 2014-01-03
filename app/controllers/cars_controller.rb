class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]


  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to '/cars/new', notice: 'Car Created Successfully!'  
    else
      render 'new', notice: 'Invalid Color'
    end
  end

  private

  def set_car
      @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:color,:year,:mileage)
  end
end
