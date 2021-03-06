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
      redirect_to new_car_path, notice: 'Car Created Successfully!'  
    else
      render new_car_path, notice: 'Please Fix The Appropriate Fields'
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
