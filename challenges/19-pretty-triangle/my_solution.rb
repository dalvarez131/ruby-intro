# Pretty Triangle


# Tu solucion abajo:

# def print_triangle int1
#   if int1<=0
#
#   else
#     otro=0
#     while (otro<int1)
#       otro += 1
#       h = Hash.new {|h,k| h[otro] = '*'*otro.to_i}   #=> {}
#       puts h.default(otro)
#     end
#   end
# end

def print_triangle int1
  int1.times do |i|
    puts"*"*(i+1)
  end
end
