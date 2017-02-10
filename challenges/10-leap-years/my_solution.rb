# Leap Years




# Tu solucion abajo:
def leap_year? leap_number
  if(leap_number % 4 == 0) && (leap_number % 100 == 0)&&(leap_number%400 ==0)
    true
  elsif (leap_number % 4 == 0) && (leap_number % 100 == 0)&&!(leap_number%400 ==0)
    false
  elsif (leap_number % 4 == 0) && (leap_number%400 ==0)
    true
  elsif (leap_number % 4 == 0) && !(leap_number % 100 == 0)
    true
  else
    false
  end
end
