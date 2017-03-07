class Die
  def initialize(sides = 6)
    @sides = sides
  end

  def roll
    1 + rand(@sides)
  end
end


def clear_screen!
  print "\e[2J"
end


def move_to_home!
  print "\e[H"
end



move_to_home!
move_to_home!
move_to_home!
clear_screen!
