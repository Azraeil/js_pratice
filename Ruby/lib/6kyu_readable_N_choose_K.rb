=begin
題意:
實作出 from n choose k
想法:
照規格一層一層寫出來
n!/(k!*(n-k)!)
約分之後會得到
n*(n-1)*...*(n-k+1) 除以 k!
所以只要實現 上面兩個除數與被除數即可
=end

class Integer
  def choose(k)
    return 1 if self == 0
    dividend, divisor = 1, 1
    n = self
    k.times do
      dividend *= n
      divisor *= k
      n -= 1
      k -= 1
    end

    return dividend/divisor
  end
end
