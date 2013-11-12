

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


