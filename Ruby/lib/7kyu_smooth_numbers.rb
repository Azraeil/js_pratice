=begin
題意:
要判斷一個數是不是 smooth number
也就是要檢驗該數能不能被小於 7 以下的質因數們整除
然後最大的質因數就會被當作該數的代表，因此而讓該數有其他的稱呼
我們要回傳的是該數的代稱
-----
測試規格:
spec/7kyu_smooth_numbers_spec.rb
-----
想法:
很適合拿來練習 TDD，我們一個一個測試讓他們通過
"power of 2":能一直被 2 整除到 0
停止迴圈的條件要設定成 > 1， 若是 > 0 會有無窮迴圈?
這時候我準備要寫下一個測試的時候想到
他只看最大的質因數，也就是說我不用急著把它除盡?
也不對，要找出該數所有的因數才行
順利的搭配測試，到最後的 non-smooth number
也就是當 n 無法被 2, 3, 5, 7 整除時，即可回傳 "non-smooth"
=end
def is_smooth(n)
  max_prime_factor = 0
  prime_factors = [2, 3, 5, 7]
  while n > 1
    smooth = false
    prime_factors.each do |prime_factor|
      if n % prime_factor == 0
        n /= prime_factor
        p n
        max_prime_factor = prime_factor if prime_factor > max_prime_factor
        smooth = true
      end
    end
    return "non-smooth" if smooth == false
  end
  p n
  case max_prime_factor
  when 2
    return "power of 2"
  when 3
    return "3-smooth"
  when 5
    return "Hamming number"
  when 7
    return "humble number"
  end
end

is_smooth(16)
