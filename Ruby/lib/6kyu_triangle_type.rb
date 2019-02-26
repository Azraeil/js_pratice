=begin
題意:
給三邊的長度，要你判斷是哪一種三角形
總共有四種情形
無法形成三角形，return 0
三角形的所有角度都小於 90 度，return 1
三角形中有一個角度等於 90 度，return 2
三角形中有一個角度大於 90 度，return 3
想法:
我只有記得當三角形中有一個角度等於 90 度時
三個邊的關係會是 a**2 + b**2 = c**2
還有任意兩邊和大於第三邊是三角形成立的條件
把最短的兩邊和跟最長邊做比較
一個一個寫測試解決吧
接著我用題目給的例子做測試後發現
若最短兩邊平方和大於最長邊平方和，那表示三角形的所有角度都小於 90 度
若最短兩邊平方和等於最長邊平方和，三角形中有一個角度等於 90 度
若最短兩邊平方和小於最長邊平方和，三角形中有一個角度大於 90 度
用 <=> 比較:
> 成立 return 1
= 成立 return 0
< 成立 return -1
case when 比較合適?
然後用之前做過筆記的
=end
def triangle_type(a, b, c)
  sides = [a, b, c]
  return 0 if sides.min(2).sum <= sides.max
  result = sides.min(2).map{|s| s**2}.sum <=> sides.max ** 2
  case result
  when 1
    return 1
  when 0
    return 2
  when -1
    return 3
  end
end
