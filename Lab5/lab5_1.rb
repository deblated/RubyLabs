
def prm (left, right, func, epsilon)
  n = (right-left)/epsilon
  result = 0.to_f
  1.upto(n) do|int|
    if func == "func1"
      result+=func1(left+int*epsilon - epsilon/2)*epsilon
    elsif func == "func2"
      result+=func2(left+int*epsilon - epsilon/2)*epsilon
    end
  end
  result
end

def trp (left, right, func, epsilon)
  n = (right-left)/epsilon
  result = 0.to_f
  1.upto(n) do|int|
    if func == "func1"
        result+=(func1(left+int*epsilon)/2+func1(right-int*epsilon)/2)*epsilon
    elsif func == "func2"
        result+=(func2(left+int*epsilon)/2+func2(right-int*epsilon)/2)*epsilon
    end
  end
  result
end

def func1(x)
  x*((1+x)**(1.to_f/3))
end

def func2(x)
  1.to_f/(x*(Math.log(x)**2))
end



puts prm(1.0,8.0,"func1",0.001)
puts prm(2.0,2.7,"func2",0.001)
puts trp(1.0,8.0,"func1",0.001)
puts trp(2.0,2.7,"func2",0.001)

