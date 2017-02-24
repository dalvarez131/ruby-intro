Pseudocode
1. Solucion Inicial

def pig_latin (string1)
  if (/\A[aeiouAEIOU]/===string1[0])
    return string1
  else
    array1= string1.partition(/[aeiouAEIOU]/)
    first=array1.shift
    array1<<first+'ay'
    p string2=array1.join.downcase.capitalize
  end
end

pig_latin('Primero')

def pig_latin_tense (string1)
  tense=string1.split(' ')
  result=tense.map do |element|
    if (/\A[aeiouAEIOU]/===element)
      element
    else
      array1= element.partition(/[aeiouAEIOU]/)
      first=array1.shift
      array1<<first+'ay'
      string2=array1.join.downcase
    end
  end
  result[0].capitalize!
  result.join(' ')

end

p pig_latin_tense('Hola Pepito como estas')


# 2. Solucion con Refactor





###### DRIVER CODE #########
