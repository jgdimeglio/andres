

Given(/^I am on the application page$/) do
  visit path_to('/the application page')
end


Given(/^An advertising exists "(.*?)"$/) do |text|
  advert=Advert.new
  advert.title="title"
  advert.text=text
  advert.save
end

Given(/^the advertising strategy will show "(.*?)"$/) do |text|
  mock=MockRandomStrategyShow.new(Advert.find_by_text(text))
  Advert.set_advertStrategyShow(mock)
  visit '/'
end

Given(/^all ads are disabled$/) do
  Advert.all.update(:enabled => 'No')
  Advert.set_advertStrategyShow(RandomStrategyShow.new)
  visit '/'
end



Then /^I should not see "(.*?)"$/ do |text|
    page.should have_no_content(text)
end


class MockRandomStrategyShow

	def initialize(returnAdvert)
		@returnAdvert=returnAdvert
	end

	def find_advert()
		@returnAdvert
	end

end













