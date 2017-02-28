# Pseudocode



# 1. Solucion Inicial

class Die
  def initialize (sides)
    if sides < 1
      raise ArgumentError.new("Only numbers are allowed")
    else
      @sides=sides
    end
  end
  def sides
    @sides
  end
  def roll
    rand(1..@sides)
  end
end
dado=Die.new(5)
dado.sides
dado.roll





# 2. Solucion con Refactor





###### DRIVER CODE #########
