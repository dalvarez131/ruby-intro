# Responde esta pregunta:

# - Cuales son las clases esenciales?
# - Que atributos necesita cada clase?
# - Que interfaz debe proveer cada clase?
# - Como van a interactuar las clases entre ellas?
# - Que clases tienen que heredar de otras, es necesario o vas a usar modulos?

# Tu codigo aca

class View
  def initialize
  end
  def fabricar
    puts "Buenos dias, que tipo de galleta quieres hacer hoy?: elige C para Chocolate, A para azucar o AL para almendras"
    gets.chomp
  end
  def receta receta
    puts receta
  end
  def hornear estado
  end
end
class Controller
  def initialize
    @vista = View.new
    @modelo = Model.new
    ir_fabrica
    ir_hornear
  end
  def ir_fabrica
    receta = @modelo.fabricar(@vista.fabricar)
    @vista.receta(receta)
  end
  def ir_hornear

  end
end
class Model
  attr_accessor :tipo, :estado, :receta
  def initialize
    @receta =['harina','levadura','mantequilla','agua']
  end
  def fabricar (tipo)
    @tipo = tipo
    case @tipo
    when 'A'
      @receta_a = fabricar_azucar
    when 'C'
      @receta_c = fabricar_chocolate
    when 'AL'
      @receta_al = fabricar_almendra
    end
  end
  def fabricar_azucar
    receta_array_a = @receta.concat( ['azucar'] )
    valores = ['100 gr','100 gr','100gr','50ml','200gr']
    cont = 0
    @receta_a = Hash.new
    receta_array_a.each_with_index do |ingrediente, cantidad|
      @receta_a[ingrediente] = valores[cont]
      cont += 1
    end
    @receta_a
  end
  def fabricar_chocolate
    receta_array_c = @receta.concat( ['chocolate'] )
    valores = ['80 gr','70 gr','100gr','100ml','300gr']
    cont = 0
    @receta_c = Hash.new
    receta_array_c.each_with_index do |ingrediente, cantidad|
      @receta_c[ingrediente] = valores[cont]
      cont += 1
    end
    @receta_c
  end
  def fabricar_almendra
    receta_array_al = @receta.concat( ['almendras'] )
    valores = ['50 gr','50 gr','50gr','50ml','50gr']
    cont = 0
    @receta_al = Hash.new
    receta_array_al.each_with_index do |ingrediente, cantidad|
      @receta_al[ingrediente] = valores[cont]
      cont += 1
    end
    @receta_al
  end

  def hornear
  end
end
Controller.new
