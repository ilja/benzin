require 'spec_helper'

describe CarsController do
  render_views
  
  before(:each) do
    sign_in Factory(:user)
  end

  def mock_car(stubs={})
    @mock_car ||= mock_model(Car, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all cars as @cars" do
      Car.stub(:all) { [mock_car] }
      get :index
      assigns(:cars).should eq([mock_car])
    end
  end

  describe "GET show" do
    it "assigns the requested car as @car" do
      Car.stub(:find).with("37") { mock_car }
      get :show, :id => "37"
      assigns(:car).should be(mock_car)
    end
  end

  describe "GET new" do
    it "assigns a new car as @car" do
      Car.stub(:new) { mock_car }
      get :new
      assigns(:car).should be(mock_car)
    end
  end

  describe "GET edit" do
    it "assigns the requested car as @car" do
      Car.stub(:find).with("37") { mock_car }
      get :edit, :id => "37"
      assigns(:car).should be(mock_car)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created car as @car" do
        Car.stub(:new).with({'these' => 'params'}) { mock_car(:save => true) }
        post :create, :car => {'these' => 'params'}
        assigns(:car).should be(mock_car)
      end

      it "redirects to the created car" do
        Car.stub(:new) { mock_car(:save => true) }
        post :create, :car => {}
        response.should redirect_to(car_url(mock_car))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car as @car" do
        Car.stub(:new).with({'these' => 'params'}) { mock_car(:save => false) }
        post :create, :car => {'these' => 'params'}
        assigns(:car).should be(mock_car)
      end

      it "re-renders the 'new' template" do
        Car.stub(:new) { mock_car(:save => false) }
        post :create, :car => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested car" do
        Car.should_receive(:find).with("37") { mock_car }
        mock_car.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :car => {'these' => 'params'}
      end

      it "assigns the requested car as @car" do
        Car.stub(:find) { mock_car(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:car).should be(mock_car)
      end

      it "redirects to the car" do
        Car.stub(:find) { mock_car(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(car_url(mock_car))
      end
    end

    describe "with invalid params" do
      it "assigns the car as @car" do
        Car.stub(:find) { mock_car(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:car).should be(mock_car)
      end

      it "re-renders the 'edit' template" do
        Car.stub(:find) { mock_car(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested car" do
      Car.should_receive(:find).with("37") { mock_car }
      mock_car.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the cars list" do
      Car.stub(:find) { mock_car }
      delete :destroy, :id => "1"
      response.should redirect_to(cars_url)
    end
  end

end
