When /^I enter my account details$/ do
  fill_in("Email", :with => 'foo@quittheprogram.org')
  fill_in("Password", :with => 'secret')
  fill_in("Password confirmation", :with => "secret")
end

Then /^my account should exist$/ do
  user = User.find_by_email("foo@quittheprogram.org")
  assert user.blank? == false
end

Given /^I am a registered user$/ do
  user = Factory(:user)
  assert user.blank? == false
end

When /^I enter my login details$/ do
  fill_in("Email", :with => 'testuser@spam.la')
  fill_in("Password", :with => 'test123')
  click_button('Sign in')
end

Then /^I should see my email address$/ do
  page.should have_content('testuser@spam.la')
end

Given /^I am logged in$/ do
  visit new_user_session_path
  fill_in("Email", :with => 'testuser@spam.la')
  fill_in("Password", :with => 'test123')
  click_button('Sign in')
  page.should have_content('testuser@spam.la')
end

