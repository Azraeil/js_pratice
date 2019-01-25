=begin
虛擬碼：
方法 泡沫排序 輸入一個陣列 array
    依序比較相鄰元素，直到陣列底端
    若 array[index] > array[index+1] 則調換兩個元素
    index 條件為 index <= array.length -2
    紀錄一下元素是否被調換
    重複上面的步驟直到沒有元素需要調換
方法結束
=end

def sort(array, &block)
  swapped_status = nil
  until swapped_status == false
    swapped_status = false
    (0..array.length - 2).each do |index|
      #這是基礎排序
      #if array[index] > array[index+1]
      #考慮到 block 的話
      #if yield(array[index]) > yield(array[index+1])
      #已經在 block 用 <=> 比較了，所以別再比較一次
      if yield(array[index], array[index+1]) == 1
        array[index], array[index+1] = array[index+1], array[index]
        swapped_status = true
      end
    end
  end
  p array
  return array
end

array = [3, 13, 8, 5]
sort(array) {|a, b| a.to_s <=> b.to_s}
