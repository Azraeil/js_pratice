def positive_sum(arr)
  puts "#{arr[1]}"
  if arr.length == 0
    return 0
  else
    n = 0
    sum = 0
    while n < arr.length
      # puts "#{arr[n]}"
      if arr[n] > 0
        sum += arr[n]
      end
      n += 1
    end

    return sum
  end
end

positive_sum([1, 2, 3])
# 耍蠢了。。。 還在那邊測試爲什麼 n <= arr.length 會有錯
# 當 n == arr.length 時，已經找不到陣列內容啦。
# 又有錯欸，我要不要換練習的地方。。。雖然習慣了，多按幾次就行 XD，所以表示他們測試寫的不夠好？
