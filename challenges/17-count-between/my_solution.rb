# Count Between

# Tu solucion abajo:
def count_between(arr, lower, upper)
  count = 0
  arr.each do |x|
    if (x >= lower) && (x<= upper)
      count = count + 1
    end
  end
  count
end
