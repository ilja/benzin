require 'spec_helper'

describe "cars/edit.html.erb" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :new_record? => false,
      :brand => "MyString",
      :model => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit car form" do
    render

    rendered.should have_selector("form", :action => car_path(@car), :method => "post") do |form|
      form.should have_selector("input#car_brand", :name => "car[brand]")
      form.should have_selector("input#car_model", :name => "car[model]")
      form.should have_selector("textarea#car_description", :name => "car[description]")
    end
  end
end
