#5. Найти след матрицы B. (Слід матриці — це сума усіх її діагональних елементів)
# 1. Размерность матриц A и B постоянна и равна n×n = 8 × 8.
# 2. Все диагональные элементы матрицы А равны 1.
# 3. Все остальные элементы матриц A и B определяются путем обращения к методу rand(10) класса Numeric.

require 'matrix'

a = Array.new(8).map!{Array.new(8)}

for i in 0..7do
  for j in 0..7 do
    if i == j
      a[i][j] = 1
    else
      a[i][j] = rand(10)
    end
  end
end

m1 = Matrix[*a]
puts m1.to_a.map(&:inspect)

trace = m1.tr
puts ("Слід матриці рівний #{trace} ")
