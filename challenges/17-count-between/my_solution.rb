# Count Between

# Tu solucion abajo:
def count_between (arr1, int1, int2)
  arr1.count{|x|  (x >= int1) &&(x<=int2)}
end
