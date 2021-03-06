Given /^the following movies exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

#Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
  #pending # express the regexp above with the code you wish you had
 # assert page.body =~ /#{arg1}.+Director.+#{arg2}/m
#end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
   assert page.body =~ /#{arg1}.+Director.+#{arg2}/m
   # express the regexp above with the code you wish you had
end
