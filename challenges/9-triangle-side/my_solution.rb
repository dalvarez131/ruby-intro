# Triangle Side

# Tu solucion abajo:
def valid_triangle? (one,two,three)
  if ((one >0)&&(two>0)&&(three>0))
      if (((one+two)>=three)&&((two+three)>=one)&&((three+one)>=two))
        true
      else
        false
      end
  else
      false
  end

end
