Given /^Tea Maker$/ do
  @tea_maker = TeaMaker.new(2)
end

When /^making (\d+) cups of tea$/ do |no_of_cups|
  @tea_maker.no_of_cups.should == no_of_cups.to_i
end

Then /^add (\d+) cup milk$/ do |cups_of_milk|
  @tea_maker.cups_of_milk.should == cups_of_milk.to_i
end

Then /^add (\d+) Cup Water$/ do |cups_of_water|
  @tea_maker.cups_of_water.should == cups_of_water.to_i
end

Then /^add (\d+) spoons Sugar$/ do |spoons_of_sugar|
  @tea_maker.spoons_of_sugar == spoons_of_sugar.to_i
end

Then /^add (\d+) tea bags$/ do |tea_bags|
  @tea_maker.tea_bags == tea_bags.to_i
end

Then /^print tea making steps$/ do
  @tea_maker.generate_steps
end
