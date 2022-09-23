#Варіант 5
# "n" i "c" задати самостійно

n=gets.chomp.to_i
c=gets.chomp.to_i
y=0.to_f

puts "1)"
1.step(n,(n-1).to_f/(n+c)) do
  |x|
  y = ((x**(1.to_f/n) + c**(1.to_f/n))**2)/((x-c)/(Math.sqrt(1.to_f/x)+Math.sqrt(1.to_f/c)*n))
  puts "x: #{x}; y: #{y}"
end

###################
puts "2)"
PI =3.141

(PI/n).step(PI,(PI-(PI/n)).to_f/((3.to_f/2)*n +c))do
  |x|
  z = Math.sin(2*x)**2-Math.cos(PI/3 - 2*x)*Math.sin(2*x - PI/6)-((1/Math.tan((PI+x)/(x+1)))**2)**(1.to_f/x)
  puts "x: #{x}; z: #{z}"
end

####################
puts "3)"

2.step(c,(c-2).to_f/(2*n))do
  |x|
  if(x>2 && x<n)
    y = ((x**(1.to_f/n) + c**(1.to_f/n))**2)/((x-c)/(Math.sqrt(1.to_f/x)+Math.sqrt(1.to_f/c)*n))
    puts "x: #{x}; f: #{y}"
  elsif (x>n && x<2*n)
    z = Math.sin(2*x)**2-Math.cos(PI/3 - 2*x)*Math.sin(2*x - PI/6)-((1/Math.tan((PI+x)/(x+1)))**2)**(1.to_f/x)
    puts "x: #{x}; f: #{z}"
  else
    func1 = ((x**(1.to_f/n) + c**(1.to_f/n))**2)/((x-c)/(Math.sqrt(1.to_f/x)+Math.sqrt(1.to_f/c)*n))
    func2 = Math.sin(2*x)**2-Math.cos(PI/3 - 2*x)*Math.sin(2*x - PI/6)-((1/Math.tan((PI+x)/(x+1)))**2)**(1.to_f/x)
    func = func1+func2
    puts "f1: #{func1}, f2: #{func2}"
    puts "x: #{x}; f: #{func}"
  end
end