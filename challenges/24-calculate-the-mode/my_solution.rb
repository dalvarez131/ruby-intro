# Pseudocode


# 1. Solucion Inicial

# 2. Solucion con Refactor

def mode(array)
  cont=1
  array1=[]

  hash1 = Hash.new(0)
  array.each do |i|
    hash1[i]+=1
  end

  hash1.each do |number_key, iter|
    if cont == iter
      array1<<number_key
    elsif cont < iter
      array1=[number_key]
      cont=iter
    end
  end
  array1
end




###### DRIVER CODE #########
