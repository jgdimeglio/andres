

Given(/^I access the new user page$/) do
  visit '/register'
  page.should have_content('Name')
end

When(/^I fill the name with "(.*?)"$/) do |name|
  fill_in('user[name]', :with => name)
end

When(/^I fill the password with "(.*?)"$/) do |password|
  fill_in('user[password]', :with => password)
end

When(/^I fill the password_confirmation with "(.*?)"$/) do |password_confirmation|
  fill_in('user[password_confirmation]', :with => password_confirmation)
end

When(/^I fill the email with "(.*?)"$/) do |email|
  fill_in('user[email]', :with => email)
end

When(/^confirm the new user$/) do
  click_button('Create')
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Given(/^I access the login user page$/) do
  visit '/login'
end

Given(/^confirm the login user$/) do
  click_button('Login')
end


