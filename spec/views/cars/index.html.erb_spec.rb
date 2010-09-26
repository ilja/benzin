require 'spec_helper'

describe "cars/index.html.erb" do
  before(:each) do
    assign(:cars, [
      stub_model(Car,
        :brand => "Brand",
        :model => "Model",
        :description => "MyText"
      ),
      stub_model(Car,
        :brand => "Brand",
        :model => "Model",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of cars" do
    render
    rendered.should have_selector("tr>td", :content => "Brand".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Model".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
