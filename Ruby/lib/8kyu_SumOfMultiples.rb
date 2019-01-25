def sum_mul(n, m)
  if n <= 0 || m <= 0 || n > m
    return "INVALID"
  end

  sum = 0
  times = 1
  while n * times <= m
    sum += times
    times += 1
  end
  puts sum
  sum = sum * n
  puts sum
  return sum
end

=begin
找出 小於 m 的所有 n 的倍數的總和。

OK, 測試還是容易有錯。

=end

sum_mul(2, 8)

sum_mul(9, 2034)
