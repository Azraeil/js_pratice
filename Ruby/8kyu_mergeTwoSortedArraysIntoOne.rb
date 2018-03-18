def merge_arrays(arr1, arr2)
  array = arr1 + arr2
  array = array.sort

  i = 0
  while i < array.length do
    if array[i] == array[i+1]
      array.delete_at(i)

    end
    i += 1
  end

  return array
end

# 給兩個矩陣，把兩個矩陣接在一起，移除重複的元素，矩陣都會是數字。

arr1 = [1, 2, 3]
arr2 = [2, 3, 4]

test = arr1 + arr2
puts "#{test}"

=begin
先加起來？然後排序？接著逐個掃 把重複的用 .delete_at 移掉？
.delete 會把所有該元素移掉
有印象之前這邊用的是 for 來處理
記錯，rails 常用 order
陣列是用 sort
......Ruby 裡沒有 "++" 啦，debug 老半天
= =，解答有問題。
=end

test = test.sort

i = 0

puts "Original length =#{test.length}"

while i < test.length do
  if test[i] == test[i+1]
    test.delete_at(i)
    puts "L = #{test.length}"
  end
  puts test
  puts "----"
  i+=1
end

puts "#{ test == test2 }"
