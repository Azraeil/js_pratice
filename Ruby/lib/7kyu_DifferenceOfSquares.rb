def difference_of_squares(n)
  square_of_sum = 0
  sum_of_square = 0
  sum = 0

  (n+1).times do |i|
    sum += i
    sum_of_square += i * i
  end
  square_of_sum = sum * sum
  puts square_of_sum
  puts sum_of_square

  return (square_of_sum - sum_of_square)
end

difference_of_squares(3)

# i * i can use i ** 2
# (1..n).each do |x| is better
