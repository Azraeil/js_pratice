=begin
題意:
給一個陣列，裡面有回文數與非回文數
寫一個方法處理這個陣列
並回傳一個只有 1 與 0 的陣列對應輸入陣列
1 表示該輸入陣列的數為 回文數，0表示非回文數
---
測試規格:
輸入 [101, 2, 85, 33, 14014] 輸出 [1, 1, 0, 1, 0]
輸入 [45, 21, 303, 56] 輸出 [0, 0, 1, 0]
輸入 [22, 303, 76, 411, 89] 輸出 [1, 1, 0, 0, 0]
輸入 [653, 808, 5] 輸出 [0, 1, 1]
輸入 [4, 23, 441, 565, 19, 818] 輸出 [1, 0, 0, 1, 0, 1]
---
編寫測試規格程式:
檔名為 7kyu_palindromes_spec.rb
---
解法:
宣告結果字串 result = []
輸入陣列.each do
轉成字串
然後用 reverse 倒轉
轉回數字後比較 若相同 則 result << 1
若不同則 result << 0
回傳 result
=end
def convert_palindromes(numbers)
  result = []
  numbers.each do |number|
    if number == number.to_s.reverse.to_i
      result << 1
    else
      result << 0
    end
  end

  return result
end
