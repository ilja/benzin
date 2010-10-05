require 'spec_helper'

describe FillingsController do
  render_views
  include Devise::TestHelpers
  
  before(:each) do
    @user = Factory.stub(:user)
    sign_in @user
    
    @car = Factory.create(:car)
    
    10.times do 
      @car.fillings << Factory.create(:filling, :car => @car)
    end
    
    Car.stub!(:find).with(@car.id).and_return(@car)
    @car.stub!(:fillings).and_return(@car.fillings)
  end

  describe "GET index" do
    it "shows all fillings of @car as @fillings" do
      get :index, :car_id => @car.id
      assigns(:car).should eq(@car)
      assigns(:fillings).should eq(@car.fillings)
    end
  end
  
  describe "GET new" do
    it "should assign a new filling to @car" do
      #get :new, :car_id => @car.id
      puts @car.fillings.inspect
     # assigns(:car).should eq(@car)
     # assigns(:filling).should be_new_record 
    end
  end
end
