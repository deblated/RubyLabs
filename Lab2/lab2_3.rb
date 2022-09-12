#Варіант 5
#1111100011101 - 7965

bin_num = "1111100011101"

size = bin_num.length - 1

result = 0.to_i

for i in 0..size do
  result+=((bin_num[i].to_i)*2)**(size-i)
end
puts "1111100011101 в десятковій формі: #{result}"


