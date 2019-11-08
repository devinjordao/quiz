class CarsController < ApplicationController
  def home
    @cars = Car.all
  end

  def new
    @car = Car.new
  end
end
