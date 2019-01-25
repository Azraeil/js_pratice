def zero_fuel(distance, mpg, fuel_left)
  puts "#{Rational(distance, mpg).to_f}"
  if Rational(distance, mpg).to_f <= fuel_left
  # if distance <= fuel_left * mpg
    puts "true"
    return true
  else
    puts "false"
    return false
  end
end

=begin
好像是，情境題？
mpg: miles per gallon
噢噢，處理四則運算，特別是除法
查 DOC 看到
Rational(2).to_f      #=> 2.0
Rational(9, 4).to_f   #=> 2.25
Rational(-3, 4).to_f  #=> -0.75
Rational(20, 3).to_f  #=> 6.666666666666667
因爲直接拿 9/4 只會拿到 2，剩下的就沒辦法拿來比較了
我太小看題目了啊
雖然說 最簡單的寫法是：
def zero_fuel(distance, mpg, fuel_left)
  mpg * fuel_left >= distance
end

=end


zero_fuel(29, 19, 1)
