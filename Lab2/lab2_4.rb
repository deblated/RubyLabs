#Варіант 5
#222 -  11011110

num_dec = 222
temp = 0.to_i
result = ""

while num_dec>=1
  result += (num_dec%2).to_s
  num_dec/=2
end

result.reverse!

puts "222 в двійковій формі: #{result}"
