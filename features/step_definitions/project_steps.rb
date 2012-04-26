Given /^I am on the homepage$/ do
  visit '/'
end

When /^I follow "([^"]*)"$/ do |link_text|
  page.click_link(link_text)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  page.fill_in(field, :with => value)
end

When /^I press "([^"]*)"$/ do |button|
  page.click_button(button)
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end