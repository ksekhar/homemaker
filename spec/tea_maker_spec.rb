require 'spec/spec_helper'

describe TeaMaker do

  before(:each) do
    @tea_maker = TeaMaker.new(1)
  end

  describe "#new" do
    it "cups of milk should be half the number of cups" do      
      @tea_maker.cups_of_milk.should == (@tea_maker.no_of_cups / 2.0)
    end
    it "cups of water should be half the number of cups" do
      @tea_maker.cups_of_water.should == (@tea_maker.no_of_cups / 2.0)
    end
    it "spoons of sugar should be equal to the number of cups" do
      @tea_maker.spoons_of_sugar.should == @tea_maker.no_of_cups
    end
    it "tea bags should be double  the number of cups" do
      @tea_maker.tea_bags.should == 2 * @tea_maker.no_of_cups
    end
  end
  describe "#generate_steps" do
    it "generates steps to prepare tea for the given number of cups" do
      header,steps = @tea_maker.generate_steps
      header.should == "Preparing Tea for 1"
      steps.should.eql?(Array)
    end
    
  end
end