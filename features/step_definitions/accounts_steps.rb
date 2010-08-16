When /^I enter my account details$/ do
  fill_in("Email", :with => 'foo@quittheprogram.org')
  fill_in("Password", :with => 'secret')
  fill_in("Password confirmation", :with => "secret")
end

Then /^my account should exist$/ do
  user = User.find_by_email("foo@quittheprogram.org")
  assert user.blank? == false
end
