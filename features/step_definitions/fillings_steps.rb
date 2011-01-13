When /^I fill in the gasoline amount as "([^"]*)" litres$/ do |amount|
  fill_in("Amount", :with => amount)
end

When /^I fill in the odometer count as "([^"]*)" kilometres$/ do |kilometres|
  fill_in("Odometer", :with => kilometres)
end

When /^I fill in the cost as "([^"]*)" euros$/ do |price|
  fill_in("Price", :with => price)
end

Then /^I should see amount "([^"]*)", cost "([^"]*)" and kilometres "([^"]*)" in the list of fillings$/ do |amount, price, km|
  page.should have_content(amount)
  page.should have_content(price)
  page.should have_content(km)
end

Given /^I have added a filling$/ do
  car = Car.first
  filling = Factory.create(:filling, :car => car)
  car.save
  puts filling.inspect
end

When /^I should see this filling in the list of fillings$/ do
  visit car_path Car.first
  within_table('fillings') do
    page.should have_xpath('//tr/td')
  end
  page.should have_no_content('No fillings here.')
end

When /^I edit this filling$/ do
  car = Car.first
  visit edit_car_filling_path car, car.fillings[0]
end

When /^I change amount to "([^"]*)"$/ do |amount|
  fill_in("Amount", :with => amount)
end

When /^I delete this filling$/ do
  #save_and_open_page
  within_table('fillings') do
    within(:xpath, "//tr/td") do
      click_link 'Destroy'
    end
  end
end

Then /^the list of fillings should be empty$/ do
  page.should have_content('No fillings here.')
end


