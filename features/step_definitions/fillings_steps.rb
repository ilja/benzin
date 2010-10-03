When /^I fill in the gasoline amount as "([^"]*)" litres$/ do |amount|
  fill_in("Amount", :with => amount)
end

When /^I fill in the odometer count as "([^"]*)" kilometres$/ do |kilometres|
  fill_in("Odometer", :with => kilometres)
end

When /^I fill in the cost as "([^"]*)" euros$/ do |price|
  fill_in("Price", :with => price)
end