# Calculate a Grade

# Tu solucion abajo:
def get_grade promedio
  if (promedio <60)
    "F"
  elsif ((promedio >=60)&&(promedio<70))
    "D"
  elsif ((promedio >=70)&&(promedio<80))
    "C"
  elsif ((promedio >=80)&&(promedio<90))
    "B"
  elsif (promedio >=90)
    "A"
  end
end
