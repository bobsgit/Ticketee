Given /^"([^"]*)" has created a ticket for this project:$/ do |email, table|
  table.hashes.each do |attributes|
    #attributes = attributes.merge!(:user => User.find_by_email!(email))
    ticket = @project.tickets.build(attributes)
    ticket.user = User.find_by_email!(email)
    ticket.save
  end
end

Then /^I should see "([^"]*)" within "([^"]*)"$/ do |text, element|
  page.should have_css(element, :text => text)
end