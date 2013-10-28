
Given(/^I access the new event page$/) do
  visit '/events/new'
end

When(/^I fill the finicio with "(.*?)"$/) do |finicio|
  fill_in('event[finicio]', :with => finicio)
end

When(/^confirm the new event$/) do
  click_button('Create')
end

