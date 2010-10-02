class FillingsController < ApplicationController
  
  def new
    car = Car.find(params[:car_id])
    @filling = car.fillings.new

      
      
  end
  
end
