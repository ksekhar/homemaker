class TeaMaker
  attr_accessor :no_of_cups, :tea_bags, :cups_of_milk, :cups_of_water, :spoons_of_sugar, :time_in_microwave
  
  def initialize(no_of_cups)
    @no_of_cups = no_of_cups
    @tea_bags = @no_of_cups * 2.0
    @cups_of_milk = @no_of_cups / 2.0
    @cups_of_water = @no_of_cups / 2.0
    @spoons_of_sugar = @no_of_cups
    @time_in_microwave = @no_of_cups + 1
  end
  
  def generate_steps
    heading = "Preparing Tea for #{@no_of_cups}"
    steps = []
    steps << "In a measuring cup with minimum #{@no_of_cups} capacity"
    steps << "Add #{@cups_of_milk} cups of milk"
    steps << "Add #{@cups_of_water} cups of water"
    steps << "Add #{@spoons_of_sugar} spoons of sugar"
    steps << "Add #{@tea_bags.to_i} tea bags"
    steps << "cook it in Microwave for #{@time_in_microwave} minutes"
    return heading, steps
  end

  def print_steps
    header, steps = generate_steps
    puts header
    puts steps.join("\n")
  end

end
