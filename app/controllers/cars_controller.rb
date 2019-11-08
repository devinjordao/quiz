class CarsController < ApplicationController
  def home
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(car_params)
    if @car.invalid?
      flash[:error] = 'COULD NOT SAVE - the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:car_make, :car_model, :car_rating, :caption)
  end
end
