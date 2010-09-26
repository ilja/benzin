require 'spec_helper'

describe "cars/new.html.erb" do
  before(:each) do
    assign(:car, stub_model(Car,
      :new_record? => true,
      :brand => "MyString",
      :model => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new car form" do
    render

    rendered.should have_selector("form", :action => cars_path, :method => "post") do |form|
      form.should have_selector("input#car_brand", :name => "car[brand]")
      form.should have_selector("input#car_model", :name => "car[model]")
      form.should have_selector("textarea#car_description", :name => "car[description]")
    end
  end
end
