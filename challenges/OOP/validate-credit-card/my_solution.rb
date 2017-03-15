<<<<<<< HEAD
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


=======
class CreditCard

 def initialize(num)
   @num = num.to_s.split("").map{|x| x.to_i}
   if @num.length != 16
     raise ArgumentError.new ("The card Number most 16 digits long")
   end
 end

 def double
   @num_double = @num.each_with_index.map do |value, index|
     if (index+1).odd?
       value*2
     else
       value
     end
   end
 end

 def break
   self.double
   @num_double.map! {|x| x.to_s}
   @num_double.map! {|num| num.length >1? num.split("") : num}
   @num_double
 end

  def sum
    self.double
    self.break
    @num_sum = @num_double.flatten.reduce(:+)
  end

  def valid
    if @num_sum % 10 == 0
      true
    else
      false
    end
  end

 def check_card
   self.double
   self.sum
      sel.valid
 end

end
>>>>>>> upstream/master

# 2. Solucion con Refactor

tarjeta=CreditCard.new(4563960122001999)
p tarjeta.check_card

###### DRIVER CODE #########
