class MilkMixer
  attr_accessor :cups_of_milk, :no_of_cups, :spoons_of_ovaltine, :spoons_of_sugar, :time_in_microwave
  def initialize(no_of_cups)
    @no_of_cups = no_of_cups
    @cups_of_milk = @no_of_cups
    @spoons_of_ovaltine = @no_of_cups
    @spoons_of_sugar = @no_of_cups
    @time_in_microwave = @no_of_cups * 30
  end

  def generate_steps
    heading = "Preparing Chocolate Milk for #{@no_of_cups}"
    steps = []
    steps << "In a measuring cup with minimum #{@no_of_cups} capacity"
    steps << "Add #{@cups_of_milk} cups of milk"
    steps << "Add #{@spoons_of_sugar} spoons of sugar"
    steps << "Add #{@spoons_of_ovaltine} spoons of ovaltine"
    steps << "cook it in Microwave for #{@time_in_microwave} seconds"
    return heading, steps
  end

  def print_steps
    header, steps = generate_steps
    puts header
    puts steps.join("\n")
  end
end
