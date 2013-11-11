
And(/^I access the new event page$/) do
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


Given(/^I access the my events page$/) do
  visit '/events/my'
end

Given(/^I have an event created with date "(.*?)"$/) do |date|
  visit '/events/new'
  fill_in('event[startdate]', :with => date)
  click_button('Create')
end

When(/^I fill the commetn with "(.*?)"$/) do |comment|
  fill_in('event[comment]', :with => comment)
end

Given(/^I have an event created with comment "(.*?)"$/) do |comment|
  event=Event.new
  event.startdate=Date.today
  event.comment=comment
  event.owner=User.first
  event.save
end

Given(/^I click the button comment$/) do
  click_link('Comment')
end




