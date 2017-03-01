# Pseudocode



# 1. Solucion Inicial

class CreditCard
  def initialize (number)
    if (number.to_s.length < 16) || (number.to_s.length > 16)
      raise ArgumentError.new("Credit cards has 16 digits")
    else
      @number=number.to_s
    end
  end
  def check_card
     primer_paso
     segundo_paso
     tercer_paso
  end
  def primer_paso
    count=0
    @array_ini = []
    @number.each_char do |digito|
      if count.even?
        @array_ini<<(digito.to_i*2).to_s
      else
        @array_ini<<(digito.to_i).to_s
      end
      count +=1
    end
    @array_ini
  end
  def segundo_paso
    @array_cc = []
    @array_ini = @array_ini.to_s
    @array_ini.each_char do |digito|
      @array_cc<<digito.to_i
    end
      @suma=@array_cc.reduce(:+)
  end
  def tercer_paso
    @suma % 10 == 0
  end
end



# 2. Solucion con Refactor

tarjeta=CreditCard.new(4563960122001999)
p tarjeta.check_card



###### DRIVER CODE #########
