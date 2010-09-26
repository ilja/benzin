require 'spec_helper'

describe "cars/show.html.erb" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :brand => "Brand",
      :model => "Model",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Brand".to_s)
    rendered.should contain("Model".to_s)
    rendered.should contain("MyText".to_s)
  end
end
