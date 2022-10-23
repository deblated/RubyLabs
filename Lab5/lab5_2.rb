
def sum (x,n=-1)
  if(x>=0.1 && x<=1.0)
    if(n==-1)
      y1=0.to_f
      y2=0.to_f
      i=0.to_i
      loop do
        y2 += ((-1)**i) * ((x**(2*i + 1)).to_f/(2*i + 1))
        i=i+1
        break if ((y1-y2).abs < 0.001)
        y1 = y2
      end
      return y2
    else
      y1=0.to_f
      0.upto(n) do|i|
        y1+= ((-1)**i) * ((x**(2*i + 1)).to_f/(2*i + 1))
      end
      return y1
    end
  else
    "error"
  end

end

def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end

puts sum(1.0)
puts sum(5.0,1000)
puts sum(0.5,100)
puts sum(-5.0)