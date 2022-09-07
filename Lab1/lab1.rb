# Варіант 5
# Обмеження: фі + гама != 0

pi = Math::PI

puts "Введіть константу а"
a = gets.chomp.to_i
puts "Введіть константу x"
x = gets.chomp.to_i
puts "Введіть константу phi (phi+gamma!=0)"
phi = gets.chomp.to_i
puts "Введіть константу gamma (phi+gamma!=0)"
gamma = gets.chomp.to_i

if phi+gamma==0
  puts "Помилка! phi+gamma=0"
else
  oper1 = (Math.exp(Math.sin(pi*pi).abs))
  oper2 = (Math.log(1+(Math.cos(a)*Math.cos(a)))+Math.tan(Math.sin(x))+(4.8*(10**1.3)))
  oper3 = (5*Math.sqrt(phi+gamma))
  result = oper1*(oper2/oper3)
  puts "Результати обчислення виразу: #{result}"
end