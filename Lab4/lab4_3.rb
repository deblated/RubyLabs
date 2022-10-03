#так як номера комп'ютера я не маю, то вкажу номер варіанту

require 'matrix'

def gaussianElimination(matrix, vector)
  0.upto(matrix.length - 2) do |pivotIdx|
    pivot = matrix[pivotIdx][pivotIdx]
    (pivotIdx+1).upto(matrix.length - 1) do |row|
      factor = matrix[row][pivotIdx]/pivot
      matrix[row][pivotIdx] = 0.0
      (pivotIdx+1).upto(matrix[row].length - 1) do |col|
        matrix[row][col] -= factor*matrix[pivotIdx][col]
      end
      vector[row] -= factor*vector[pivotIdx]
    end
  end

  backSubstitution(matrix,vector)
end

def backSubstitution(matrix, vector)
  (matrix.length - 1).downto( 0 ) do |row|
    tail = vector[row]
    (row+1).upto(matrix.length - 1) do |col|
      tail -= matrix[row][col] * vector[col]
      matrix[row][col] = 0.0
    end
    vector[row] = tail / matrix[row][row]
    matrix[row][row] = 1.0
  end
end

def main()
  a=0.to_i
  begin
    puts("Введіть розмірність: ")
    a = gets.chomp!.to_i
    if (a<3 || a>9)
      puts("Введено некоректні данні")
    end
  end while (a<3 || a>9)
  arr = Array.new(a).map!{Array.new(a)}
  for i in 0..(a-1)do
    for j in 0..(a-1) do
      if i == j
        arr[i][j] = 2.0.to_f
      else
        arr[i][j] = 7.0.to_f
      end
    end
  end
  matrix = Matrix[*arr]

  arr1 = Array.new(a){|elem| elem.to_f + 1}
  vector = Vector[*arr1]

  puts matrix
  puts vector

  gaussianElimination(arr, arr1)

  matrix = Matrix[*arr]
  vector = Vector[*arr1]

  puts matrix
  puts vector
end

main()