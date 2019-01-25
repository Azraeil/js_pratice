=begin
題意:
給一個含有正整數的陣列，每個正整數都有三個
除了其中一個正整數只出現一次，將此數稱作 x
另一個正整數只出現兩次，將此數稱作 y
任務是求 x * x * y
-----------------------
腦袋第一個想到的是排序
不過這題在意的是出現次數，我得找出只出現一次與只出現兩次的數
我應該用陣列.sort!.each do?
NO，實測發現修改 each 使用中的陣列會有無法預期的錯誤發生
用 while 吧，直到找到 x 與 y 為止，都不斷地算個數
  然後用 count 去數有幾個，如果等於 3 就用 delete 砍掉
  等於 1 設成 x，宣告後記得要把該元素砍掉
  等於 2 設成 y
=end
def missing_values(array)
  x = 0
  y = 0
  while x == 0 || y == 0
    p array.sort!
    count_int = array.count(array[0])
    case count_int
    when 1
      x = array[0]
    when 2
      y = array[0]
    end
    array.delete(array[0])
  end

  return (x * x * y)
end

missing_values([27, 65, 44, 39, 44, 21, 21, 44, 65, 39, 21, 65])

# 有個參考答案挺讚的用 .uniq 之後用 sort_by {|x| array.count(x)} 排序
# 前兩個就是 x 與 y 了

# 同學提供一個更棒的...
#  a.find{|x| a.count(x) == 2} * a.find{|x| a.count(x) == 1}**2
