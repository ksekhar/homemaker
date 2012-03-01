require 'spec/spec_helper'

describe MilkMixer do

  before(:each) do
    @milk_mixer = MilkMixer.new(1)
  end

  describe "#new" do
    it "cups of milk should be equal to the number of cups" do
      @milk_mixer.cups_of_milk.should == @milk_mixer.no_of_cups
    end
    it "spoons of ovaltine should be equal to number of cups" do
      @milk_mixer.spoons_of_ovaltine.should == @milk_mixer.no_of_cups
    end
    it "spoons of sugar should be equal to number of cups" do
      @milk_mixer.spoons_of_sugar.should == @milk_mixer.no_of_cups
    end
  end

  describe "#generate_steps" do
   it "generates steps to prepare chocolate milk for the given number of cups" do
      header,steps = @milk_mixer.generate_steps
      header.should == "Preparing Chocolate Milk for 1"
      steps.should.eql?(Array)
    end
  end
end