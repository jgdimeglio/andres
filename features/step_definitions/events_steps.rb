
Given(/^I access the new event page$/) do
  visit '/events/new'
  page.should have_content('New Event')
end

When(/^I fill the start date with "(.*?)"$/) do |startdate|
  fill_in('event[startdate]', :with => startdate)
end

When(/^confirm the new event$/) do
  click_button('Create')
end

Given(/^I am logged$/) do
  visit '/login'
  fill_in('user[email]', :with => 'prueba@test.com')
  fill_in('user[password]', :with => 'Test1234')
  click_button('Login')
  page.should have_content('prueba@test.com')
end

