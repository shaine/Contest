Given /^I am logged out$/ do
  if has_content? "Logout"
    click_link("Logout")
  end
end

When /^I attempt to login with:$/ do |table|
  # table is a Cucumber::Ast::Table
  hash = table.hashes.first
  fill_in('login_user[username]', :with => hash[:username])
  fill_in('login_user[password]', :with => hash[:password])
  uncheck('stay_logged_in')
  check('stay_logged_in') if hash[:stay_logged_in]
end

Then /^I should be logged in$/ do
  assert has_content? "Logout"
end

Then /^I should see the private template$/ do
  assert has_content? "Dashboard"
end