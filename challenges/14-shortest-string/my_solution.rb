# Shortest String

#Tu solucion abajo:
def shortest_string corto
  corto.min{|a,b|a.length <=> b.length}
end
