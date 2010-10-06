require 'spec_helper'

describe FillingsController do
  render_views
  include Devise::TestHelpers
  
  before(:each) do
    @user = Factory.stub(:user)
    sign_in @user
    
    @car = Factory.stub(:car)
    Car.stub!(:find).with(@car.id).and_return(@car)
  end

  def make_fillings
    @fillingslist = 10.times.collect { Factory.stub(:filling, :car => @car) }
    @car.stub!(:fillings).and_return(@fillingslist)
  end

  describe "GET index" do
    it "shows all fillings of @car as @fillings" do
      make_fillings 
      get :index, :car_id => @car.id
      assigns(:car).should eq(@car)
      assigns(:fillings).should eq(@car.fillings)
      assigns(:fillings).count.should == 10
    end
  end
  
  describe "GET new" do
    it "should assign a new filling to @car" do
      f = Factory.stub(:filling)
      controller.stub_chain(:car, :fillings, :new).and_return(f)
      get :new, :car_id => @car.id
      assigns(:car).should eq(@car)
      assigns(:filling).should be_new_record 
    end
  end

  describe "POST create" do
    it "should create the new filling" do
    end
  end
end
