#Варіант 5


def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end

y1=0.to_f
y2=0.to_f
n=2
loop do
  y2 += (factorial(n-1).to_f/factorial(n+1))**(n*(n+1))
  n=n+1
  break if ((y1-y2).abs < 0.00001)
  y1 = y2
end
puts y2

#????
y11=0.to_f
y21=0.to_f
n=1
loop do
  y21 += 1.to_f/((2*n -1)*(2*n +1))
  n=n+1
  break if ((y11-y21).abs < 0.00001)
  y11 = y21
end
puts y21

#infinite sum number 3
y111=0.to_f
y211=0.to_f
n=1
loop do
  y211 += (factorial(4*n -1)*factorial(n+1)).to_f/(factorial(3*n)*(3**(2*n))*factorial(2*n))
  n=n+1
  break if ((y111-y211).abs < 0.00001)
  y111 = y211
end
puts y211
