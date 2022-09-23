#Завдання 2
res = 0.to_f
for i in 0..8
  res+= 1.to_f/(3**i)
end
puts "Відповідь: #{res}"

#Завдання 4
puts "Введіть n: "
n = gets.chomp.to_i
res1 = 0.to_f
temp = 0.to_f
for i in 1..n
    temp+=Math.sin(i)
    res1+=1/temp
end
puts "Відповідь: #{res1}"

