
# Practica de Arrays

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "Tactical 10mm"]

# 1. Itera sobre el array zombie_apocalypse_supplies, imprimiendo cada elemento dentro del array.
# ----
 zombie_apocalypse_supplies.each do |supplies|
   p supplies
 end

# 2. Para mantenernos organizados, organiza el array zombie_apocalypse_supplies de forma alfabetica.
# ----

# result == ["binoculars", "CB radio", "compass", "hatchet", "rations","shotgun", "Tactical 10mm", "water jug"]

zombie_apocalypse_supplies.each do |supplies|
  supplies.downcase!
end
p zombie_apocalypse_supplies.sort!


 zombie_apocalypse_supplies.sort_by { |word| word.downcase }

# 3. Crea un metodo que mire si un item (string) esta dentro del arreglo zombie_apocalypse_supplies. Por ejemplo esta `boots` dentro de la lista de suministros?.
# ----
def find (zombie_apocalypse_supplies, item)
  vart=0
  zombie_apocalypse_supplies.each do |supplies|
     if item==supplies
       vart+=1
      end
   end
   if vart>0
     p true
     return true
   else
     p false
     return false
   end
end

find(zombie_apocalypse_supplies, "boots")
find(zombie_apocalypse_supplies, "compass")

def is_there_thing?(thing, a)
  a.include?(thing)
end

is_there_thing?('compass', zombie_apocalypse_supplies)

# 4. No puedes cargar muchas cosas, solo hay espacio para 5. Remueve todos los items del arreglo zombie_apocalypse_supplies que tengas mas de dos palabras, solo pueden quedar los 5 items compuestos de una sola palabra.
# ----

zombie_apocalypse_supplies.delete_if {|supplies| supplies.include? " " }
p zombie_apocalypse_supplies
# 5. Encontraste otro sobreviviente! esto significa que pueden combinar sus suministros. Crea un nuevo arreglo de suministros combinados en base a tus zombie_apocalypse_supplies, y los sumnitros del otro sobreviviente. Debes deshacerte de todos los suministros que esten duplicados. No olvides revisar la documentacion de Array.

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
share_supplies=zombie_apocalypse_supplies+other_survivor_supplies
p share_supplies.uniq!

# otra manera
# result = zombie_apocalypse_supplies + other_survivor_supplies
# result = result.uniq
# result = zombie_apocalypse_supplies | other_survivor_supplies

# ----

# Practica de Hash

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Itera sobre el hash extinct_animals, imprimiendo cada vez el la pareja de key/value con un dash (-) entre ellos y un asterisco (*) entre cada elemento (animal extincto).
# ----
extinct_animals.each do |animal,age|
  print "#{animal}-#{age}*"
end
puts
# 2. Elimina todos los animales que se extinguieron despues del año 1999, del hash extinct_animals. No uses metodos especiales solo `delete` e iteraciones.
# ----
  extinct_animals.delete_if {|animal,age| age>1999 }
  p extinct_animals

extinct_animals.each do |animal, year|
  extinct_animals.delete(animal) if year > 1999
end

# 3. Nuestros calculos estaban muy mal, resulta que todos esos animales se extinguieron 3 años antes que la fecha dada. Actualiza los valores dentro de extinct_animals para que reflejen el valor real de la fecha de extincion.
# ----
extinct_animals.each do |animal,age|
  age= age-3
  print "#{animal}-#{age}*"
end
p extinct_animals

extinct_animals.each do |animal, year|
  extinct_animals[animal] = year - 3
end

# 4. Oiste que los siguientes animales podian estar extinctos, pero no estas seguro. Uno por uno revisa si se encuentran incluidos dentro del hash extinct_animals:
# "Andean Cat"
# "Dodo"
# "Tasmanian Tiger"
# "Saiga Antelope"
# ----


otros_extintos=["Andean Cat","Dodo","Tasmanian Tiger","Saiga Antelope"]
extinct_animals.each do |animal,age|
  otros_extintos.each do |animal1|
    respuesta=animal.include? animal1
    if respuesta==true
      puts "#{animal} si esta en la lista"
    end
  end
end




# 5. Acabamos de encontrar que el Passenger Pigeon, realmente no esta extincto!
# Remuevelo del hash extinct_animals y devuelve su pareja de key/value como un arreglo de dos elementos. Puedes encontrar un metodo en la documentacion de la  clase Hash que te puede ayudar con esto.
# ----
nuevo_array=[]
extinct_animals.each do |animal,age|
  if (animal=="Passenger Pigeon")
    nuevo_array=[animal,age]

  end
end
extinct_animals.delete_if {|animal,age| animal =="Passenger Pigeon" }
p nuevo_array
p extinct_animals


# otra manera
# extinct_animals.to_a.unshift(["Passenger Pigeon", 1914]).to_h.shift


# Practica, Estructuras nesteadas

# Imprime en la consola solo el elemento target ningun otro

# Target: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# Intentos:
# ============================================================
array.each do |a|
  a.each do |b|
    if b.kind_of?(Array)
      b.each do |c|
        if c.kind_of?(Array)
          c.each do |d|
            if d =="FORE"
              p  d
            end
          end
        end
      end
    end
  end
end


# ============================================================

# Target: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# Intentos:
# ============================================================
hash.each  do |key, a1|
  a1.each do |key,b1|
    b1.each do|key,c1|
      c1.each do |key,d1|
        if d1=="congrats!"
          p d1
        end
      end
    end
  end
end

# ============================================================

# Target: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# os:
# ============================================================

nested_data.each do |key,a|
  a.each do |b|
    if b.kind_of?(Hash)
      b.each do |key,c|
        if c=="finished"
          p c
        end
      end
    end
  end
end

# ============================================================

#Usando un metodo del modulo Enumerable, modifica el array number_array de forma que cada numero se le sume 5. Lo vas a hacer de forma destructiva o no ?

number_array = [5, [10, 15], [20,25,30], 35]

number_array=number_array.map do |a|
  if  !a.kind_of?(Array)
    a=a+5
  else
    a.map do |b|
      if  !b.kind_of?(Array)
        b=b+5
      end
    end
  end
end
p number_array

# Crea un metodo que reciba un array como argumento, en este caso el array startup_names, y devuelva un array igual pero en donde a cada nombre se le a añadido 'ly' al final.

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def add_ly array1
  array1=array1.map do |a|
    if !a.kind_of?(Array)
      a+'ly'
    else
        add_ly(a)
    end

  end
  return array1
end
p array1=add_ly(startup_names)
