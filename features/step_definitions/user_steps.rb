#Given /the following users exist/ do |users_table|
  #users_table.hashes.each do |auser|
        #User.create!(auser)
  #end
  #flunk "Unimplemented"
#end

Then /^(?:|I )should see/ do
	page.should have_content('Signup')
end

But /^should not see/ do
	page.should_not have_content('Profile')
end

