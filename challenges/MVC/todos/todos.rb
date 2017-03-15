# Que clases necesitas?

# Recuerda, hay 4 responsabilidades, cada una con sus propias responsabilidades:
# 1. Recolectar el input del usuario y mostrarle la interfaz (View)
# 2. Decidir la accion necesaria a ejecutar en base al input del usuario (Controller)
# 3. Escribir y leer del archivo (Model)
# 4. Manipular los objetos en memoria que modela la lista de tareas (domain-specific model)

# El punto 4 es donde vive la escencia de tu aplicacion.
# Casi todas las aplicaciones en el universo tienen alguna version de las responsabilidades (1), (2), y (3).w


# $ ruby todo.rb add Bake a delicious blueberry-glazed cheesecake
require "csv"
class View
  def initialize
  end

  def list_m
    cont=1
    if File.exist?("./listado.csv")
      CSV.foreach("./listado.csv") do |row|
        if row[1] == 'true'
          puts "#{cont}. #{checkmark = "\u2713"}   #{row[0]}"
        else
          puts "#{cont}.     #{row[0]}"
        end
        cont += 1
      end
      if cont == 1
        puts "No tienes ningun listado"
      end
    else
      puts "No tienes ningun listado"
    end
  end


end
class Controller
  def initialize array1
    @option = array1[0]
    array1.shift
    @array1 = array1
    modelo = Model.new(@array1)
    vista = View.new
    case @option
      when 'add'
        modelo.add_m
      when 'list'
        vista.list_m
      when 'delete'
        modelo.delete_m
      when 'complete'
        modelo.complete_m
    end
  end
end

class Model
  def initialize array1
    @array1 = array1
    @mensaje = @array1.join(" ")
  end
  def add_m
    @complete = false
     file_csv=CSV.open("./listado.csv", "a") do |csv|
       csv << [@mensaje, @complete]
     end
   end
   def delete_m
        text= CSV.read("./listado.csv")
        text.delete_at(@array1.join.to_i - 1)
        CSV.open("./listado.csv", "w+") do |csv|
          text.each do |line|
            csv << line
          end
        end
    end
    def complete_m
     @complete = true
     text= CSV.read("./listado.csv")
     @array1.join.to_i-1
     text[@array1.join.to_i-1][1] = @complete
     file_csv = CSV.open("./listado.csv", "w+") do |csv|
       text.each do |e|
         csv << e
       end
     end
  end
 end
Controller.new (ARGV)
