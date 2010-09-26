When /^I enter the details of my Car$/ do
  fill_in "Brand", :with => 'Mazda'
  fill_in "Model", :with => '626'
  fill_in "Description", :with => 'GLX 2.0 uit 1997'
end

Then /^my car should be created$/ do
  car = Car.first #todo dit is misschien geen goed idee
  assert car.blank? == false
end

Given /^I have created A Car$/ do
  car = Factory(:car)
  assert car.blank? == false
end

When /^I edit this Car$/ do
  car = Car.first #todo: beter maken
  visit edit_car_path car 
end

Then /^I change the brand to "([^"]*)"$/ do |brand|
  fill_in "Brand", :with => brand
end

Then /^the car should have "([^"]*)" as brand$/ do |brand|
  car = Car.first
  assert car.brand == brand
end

Then /^The car should be deleted$/ do
  Car.first.nil == true
end

