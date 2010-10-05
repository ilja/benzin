require 'spec_helper'

describe FillingsController do
  render_views
  include Devise::TestHelpers
  
  before(:each) do
    @user = Factory.stub(:user)
    sign_in @user
    
    @car = Factory.stub(:car)
    
    @fillings = 10.times { Factory.stub(:filling, :car => @car) }
    
    Car.stub!(:find).with(@car.id).and_return(@car)
    @car.stub!(:fillings).and_return(@fillings)
  end

  describe "GET index" do
    it "shows all fillings of @car as @fillings" do
      get :index, :car_id => @car.id
      assigns(:car).should eq(@car)
      assigns(:fillings).should eq(@fillings)
    end
  end
end
