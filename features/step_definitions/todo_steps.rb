Given /^a user logged in as "([^"]*)"$/ do |email|
  When %{I go to the account creation page}
  And %{I fill in "Email" with "#{email}"}
  And %{I press "Create Account"}
end