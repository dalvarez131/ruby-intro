# Esta es la forma en que se crean errores personalizados
class NoOrangesError < StandardError
end
class OrangeTree
  attr_accessor :age, :height
  # Envejeze el
  def initialize()
    @age = 0
    @height = 0
    @oranges = []
    @diameter = []
  end


  def age!
    @age += 1
    if @age < 6
      @height += 1
    end
    cont=0
    if (@age >= 3)
      qty = rand(1..50)
      while cont<qty
        orange = Orange.new()
        @oranges<<orange
        cont += 1
      end
    end
    @age
  end

  # Devuelve true si hay naranjas en el arbol, false si no
  def any_oranges?
    if (@age >= 3) && !(@oranges == [])
      @respuesta=true
    else
      @respuesta=false
    end
  end

  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless @respuesta==true
    @oranges.pop
  end


  def dead?
    if (@age==10)
      true
    else
      false
    end
  end

end


class Orange
  attr_accessor :diameter
  # Crea una naranja con determinado +diameter+
  def initialize()
    @diameter = setDiameter
  end
  def setDiameter
   rand (3..15)

  end

end


######## DRIVER CODE ###########
tree = OrangeTree.new()
tree.age! until tree.any_oranges?
puts "El arbol tiene #{tree.age} años y mide #{tree.height} metros"

until tree.dead?
  basket = []
  # Pone las naranjas en la canasta
  while tree.any_oranges?
    basket <<tree.pick_an_orange!
  end

  avg_diameter = basket.map { |orange| orange.diameter}
  avg_diameter = avg_diameter.reduce(:+) / basket.length
  puts "Reposte Año #{tree.age}"
  puts "Altura arbol: #{tree.height} metros"
  puts "Cosecha: #{basket.size} naranjas con un diametro promedio de #{avg_diameter} cm"
  puts ""

  #Envejeze el arbol en 1 año

  tree.age!
end

puts "Miercoles, se murio el arbol!"
