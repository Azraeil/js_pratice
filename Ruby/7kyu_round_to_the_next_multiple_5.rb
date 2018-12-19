=begin
題意:
給一個整數 n ，請回傳比它大的 5 的倍數
------------
解法:
1. 若是五的倍數就直接回傳 n % 5 == 0
2. n > 0, n % 5 != 0, return (n/5 + 1) * 5
3. n < 0, n % 5 != 0, return (n/5) * 5
-2 -> 0
-6 -> -5
出錯，因為 -6/5 = -2
=end

def round_to_next_5(n)
  if  n % 5 == 0
    return n
  elsif n > 0
    return (n/5 + 1) * 5
  elsif n < 0
    return (n.abs/5) * (-5)
  end
end
