Given(/^I want to add a contact$/) do
  visit "/contact/new_contact" 
end

When(/^I fill out the form with the folliwng attributes:$/) do |table|
  # table is a Cucumber::Ast::Table
  criteria = table.rows_hash
  contact  = {}
  fill_in('contact_first_name',   :with => criteria["First name"])
  fill_in('contact_last_name',    :with => criteria["Last name"])
  fill_in('contact_phone_number', :with => criteria["Phone number"])
  fill_in('contact_address',      :with => criteria["Address"])
end

When(/^I click the "(.*?)" button$/) do |arg1|
  click_button 'Save'
  page.should have_content("Your contact was successfully saved")
end

Given(/^I want to get all contacts$/) do
  Contact.all
end

Then(/^I see all the contacts$/) do
  Contact.all
end
