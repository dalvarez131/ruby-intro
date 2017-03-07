# Este es un ejemplo de como puedes guiar tu diseño usando pruebas.
# Al correr este codigo e ir solucionando las pruebas que fallan una por una deberias ser capaz de terminar el reto facilmente.

########################################################
# design the classes (partially complete)
########################################################
# Q: Que clases, metodos y attributos faltan?
# - No cambies el codigo existente, solo añadele cosas.

module Reality
  def passage_of_time
    "time passes ..."
    # que mas deberias pasar en este metodo?
    @cat_status = "sad cat."
    @dog_status = "sad dog."
    @eat = false

  end
end

class Pet
  include Reality
end

class Person
  include Reality
  attr_accessor :pets

  def initialize
    @pets = []
  end
end


class Dog
<<<<<<< HEAD
  include Reality
  attr_accessor :walk, :eat

  def initialized
    @dog_fed = false
  end

  def walk!
    @dog_status = "happy dog."
  end

  def walked?
    if @dog_status == "happy dog."
      true
    else
      false
=======
  def initialize(name)
    @name = name
    begin
      raise ArgumenError.new('Wron name input') if name.is_a?(Fixnum)
      @name = name
    rescue
      @name = 'Default name'
>>>>>>> upstream/master
    end
  end
  def speak!
    "woof!"
  end
  def eat!
    @eat = true
  end

  def fed?
    if @eat
      @dog_fed = true
    else
      @dog_fed = false
    end
  end
end

<<<<<<< HEAD

class Cat
  include Reality
  attr_accessor :strech, :eat1

  def initialized
    @cat_fed = false
  end

  def stretch!
    @cat_status = "happy cat."
  end

  def stretched?
    if @cat_status == "happy cat."
      true
    else
      false
    end
  end
  def speak!
    "meow."
  end

  def eat!
    @eat = true
  end

  def fed?
    if @eat
      @cat_fed = true
    else
      @cat_fed = false
    end
  end
end

p fido = Dog.new
p fido.walked?
p fido.walk!
p fido.walked?

# con el paso del tiempo necesita volver a caminar
p fido.passage_of_time
p fido.walked?

# el perro puede comer y se acuerda que comio
p fido.fed?
p fido.eat!
p fido.fed?

# con el paso del tiempo necesita volver a comer
p fido.passage_of_time
p fido.fed?

# el perro puede hablar
p fido.speak!


p precious = Cat.new

# el gato puede estirarse y se acuerda que se estiro
p precious.stretched?
p precious.stretch!
p precious.stretched?

# con el tiempo necesita estirarse mas
p precious.passage_of_time
p precious.stretched?

# el gato puede comer
p precious.eat!
p precious.speak!

p owner = Person.new

# # las personas pueden tener mascotas
p owner.pets
p owner.pets << fido
# assert_equal(owner.pets.length, 1)
#
# assert(owner.pets << precious)
# assert_equal(owner.pets.length, 2)
#
# assert(owner.pets.include? fido)
# assert(owner.pets.include? precious)
#
# fido.passage_of_time
# assert_false(fido.walked?)
#
# assert(owner.walk(fido))
# assert(fido.walked?)
#
# precious.passage_of_time
# assert_false(precious.fed?)
#
# assert(owner.feed(precious))
# assert(precious.fed?)
#
# # las mascotas pueden hacer trucos
# assert(owner.showoff_pet_tricks)
=======
class Person
  attr_accessor :pets

  def initialize
    @pets = []

  end

end


class Game
  end


g = Game.new(50)
>>>>>>> upstream/master
