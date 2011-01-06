class FillingsController < ApplicationController
  
  def index
    @car = Car.find(params[:car_id])
    @fillings = @car.fillings
  end
  
  def new
    @car = Car.find(params[:car_id])
    @filling =  @car.fillings.new
  end
  
  def create
    @car = Car.find(params[:car_id])
    @filling = @car.fillings.create(params[:filling])
    puts @car.inspect
    puts @filling.inspect
    
    if @filling.save
      redirect_to car_fillings_path(@car.id), :notice => "Filling was successfully saved."
    else
      render :action => "new"
    end
    
  end
  
end
