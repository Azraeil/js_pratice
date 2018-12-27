=begin
題意:
給一個陣列，裡面有很多整數
將這些整數依照
        1 ~ 10^4
   10^4+1 ~ 2x10^4
 2x10^4+1 ~ 3x10^4
...
99x10^4+1 ~ 10^6
分群組
舉例 a = [20000, 239, 10001, 999999, 10000, 20566, 29999]
分群結果
1-10000:
239
10000
10001-20000:
10001
20000
20001-30000:
20566
29999
990001-1000000:
999999
題目要求回傳上面分群結果占用的行數
每個數各占用一行
然後群組範圍也占用一行
所以七個數 + 四個群組 = 11 行
----
想法:
先對陣列排序?
然後依序拿 10000, 20000, ... 去比大小?
只要那個數字比上限大就要加
修正:要考慮在同一個 group 的可能性，所以要先確定 group 陣列裡有沒有該數了
數的級距是 10000
=end

def numbers_grouping(array)
  # 對數字陣列進行排序，從小到大
  array.sort!
  # p array
  group_header = []
  group_upper_limit = 10000
  array.each do |int|
    while int > group_upper_limit
      group_upper_limit += 10000
    end
    # p int, group_upper_limit
    group_header << group_upper_limit if group_header.include?(group_upper_limit) == false
    # puts "=============="
  end
  # p group_header
  # p (group_header.size + array.size)
  return (group_header.size + array.size)
end

# array = [20000, 239, 10001, 999999, 10000, 20566, 29999]
array = [10000, 1]
numbers_grouping(array)
