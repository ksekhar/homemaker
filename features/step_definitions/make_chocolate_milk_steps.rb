Given /^Milk Mixer$/ do
  @milk_mixer = MilkMixer.new(1)
end

When /^making (\d+) cup of Chocolate Milk$/ do |no_of_cups|
  @milk_mixer.no_of_cups.should == no_of_cups.to_i
end

Then /^add (\d+) cup of plain milk$/ do |cups_of_milk|
  @milk_mixer.cups_of_milk.should == cups_of_milk.to_i
end

Then /^(\d+) spoon of Ovaltine$/ do |spoons_of_ovaltine|
  @milk_mixer.spoons_of_ovaltine.should == spoons_of_ovaltine.to_i
end

Then /^(\d+) spoon of Sugar$/ do |spoons_of_sugar|
  @milk_mixer.spoons_of_sugar.should == spoons_of_sugar.to_f
end

Then /^print Chocolate milk steps$/ do
    @milk_mixer.generate_steps
end