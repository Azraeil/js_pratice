=begin
題意:
給一個陣列代表一排蠟燭的狀態，1 表示點燃，0 表示熄滅
然後跑一個演算法
從第一個蠟燭跑到最後一個，若發現蠟燭是點燃狀態，則將他之前的蠟燭以相反的狀態呈現
回傳最後蠟燭的狀態
------
想法:
依照 TDD 流程慢慢解
從 [0, 0], [1, 1], [1, 1, 1], ...
=end

# 被嫌效率不夠的解法，大概還差 12 %
# def switch_lights(array)
#   (0..array.size-1).each do |index|
#     if array[index] == 1
#       (0..index).each do |i|
#         array[i] = (array[i] - 1).abs
#       end
#     end
#   end
#   return array
# end

# 所以要在掃一次的時候就決定那根蠟燭最後的是點亮還是熄滅的
def switch_lights(array)
  (0..array.size-1).each do |index|
    # 計算那根蠟燭(包含自己)之後所有點亮蠟燭的數量就能決定他是點亮還是熄滅
    array[index] = (array[index]-1).abs if array[index..-1].count(1).odd?
  end
  return array
end
# 執行測試時間 Time: 4321ms
