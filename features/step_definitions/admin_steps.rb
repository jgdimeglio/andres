

Given(/^I access the home page$/) do
  visit '/'
end

Given(/^there is a registered administrator$/) do
  user=User.new
  user.name='admin'
  user.password='Admin1234'
  user.admin=true
  user.email='admin@test.com'
  user.save
end

Given(/^I am logged as admin$/) do
  visit '/login'
  fill_in('user[email]', :with => 'admin@test.com')
  fill_in('user[password]', :with => 'Admin1234')
  click_button('Login')
end


Given(/^I access the advertising new page$/) do
  visit '/adverts/new'
end

When(/^I fill the title with "(.*?)"$/) do |title|
  fill_in('advert[title]', :with => title)
end

When(/^I fill the text with "(.*?)"$/) do |text|
  fill_in('advert[text]', :with => text)
end

When(/^confirm the new advert$/) do
   click_button('Create')
end


Given(/^I access the advertising show page$/) do
   visit '/adverts/show'
end

Given(/^I have created an advertisement$/) do
  advert=Advert.new
  advert.title="title"
  advert.text="text"
  advert.save
  visit '/adverts/show'
end

When(/^confirm delete$/) do
  click_link('Delete')
end



