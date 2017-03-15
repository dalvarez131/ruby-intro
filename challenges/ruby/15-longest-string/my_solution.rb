# Longest String

# Tu solucion abajo:
def longest_string largo
  largo.max{|a,b|a.length <=> b.length}
end
