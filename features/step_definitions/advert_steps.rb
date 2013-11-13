Given(/^An advertising exists$/) do
  @advert = Advert.find_current
end

Given(/^I am on the application page$/) do
  visit path_to('/the application page')
end

When(/^I see the advertising page$/) do
  
end

Then(/^I should see the advertising's text$/) do
  page.should have_content(@advert.text)
end














