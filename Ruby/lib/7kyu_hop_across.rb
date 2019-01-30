=begin
題意:
這題在理解上卡的意外的久...
給一個陣列 [1, 2, 5, 1]
要你算出從陣列的左邊依照陣列元素移動到陣列外面要移動幾次
然後接著算從陣列右邊移動到左邊要移動幾次
最後將移動次數加總後回傳
從左到右：
索引值：[0, 1, 2, 3]
步數值：[1, 2, 5, 1]
依照 索引值 0 的步數值 1 移動
步數值 1: 移動到 索引 1 接著依照索引 1 的步數值 2 移動
步數值 2: 移動到 索引 3 接著依照索引 3 的步數值 1 移動到陣列外面 結束
從右到左：
索引：[0, 1, 2, 3]
步數：[1, 2, 5, 1]
依照 索引值 3 的步數值 1 移動到 索引值 2
依照 索引值 2 的步數值 5 移動到 陣列外面 結束
-----
想法:
計算從左到右要移動的次數
可以用陣列索引值 != nil 來當邊界值
while lst[index] != nil
然後從 index 0 開始移動，每移動一次步數就 + 1
前期可以先設兩個變數分開計算比較好 debug
這一題暫時還不用考慮跳不出去的情形，有 6kyu 的題目
反向要注意邊界條件，因為 ruby 陣列是接受 負索引值的
=end
def hop_across(lst)
  # 計算從左到右
  index = 0
  move_count = 0
  while lst[index] != nil
    index += lst[index]
    move_count += 1
  end
  # 計算從右到左
  index = -1
  while lst[index] != nil
    puts "index = #{index}, lst[index] = #{lst[index]}"
    index -= lst[index]
    move_count += 1
  end
  p move_count
end
