# Mi solucion:

def pad (array1, num1, arg1=nil)
  if (num1<=array1.length)
    return array1.dup
  else
     array2=array1.dup
     while (num1>array2.length)
       array2.push(arg1)
     end
     return array2
  end
end

def pad! (array1, num1, arg1=nil)
  if (num1<=array1.length)
    return array1
  else
     while (num1>array1.length)
       array1.push(arg1)
     end
     return array1
  end
end

# p array=pad([1,2,3],0)
# p array1=pad([],2)
# p array2=pad([],2,'apple')
# p array2=pad([],2,{})
