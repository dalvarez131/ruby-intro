# Leap Years

# # Tu solucion abajo:
# condition = true

# unless !condition
#   p "algo"
# end

# p 'blahah' if condition

# Tu solucion abajo:
def leap_year? leap_number
  if(leap_number % 4 == 0) && (leap_number % 100 == 0)&&(leap_number%400 ==0)
    true
  elsif (leap_number % 4 == 0) && (leap_number % 100 == 0)&&!(leap_number%400 ==0)
    false
  elsif (leap_number % 4 == 0) && (leap_number%400 ==0)
    true
  elsif (leap_number % 4 == 0) && !(leap_number % 100 == 0)
  end
end
