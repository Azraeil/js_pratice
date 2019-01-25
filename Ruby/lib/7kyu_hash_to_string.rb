=begin
題意:
給一個用 hash 組成的價位表
然後指定一個範圍，要我們回傳某個範圍的商品字串
"Key (Value), Key (Value), ..."
並且從小排到大
-----
測試規格:
spec/7kyu_hash_to_string_spec.rb
-----
想法:
先將 hash 依照 value 排序 sort_by{|key, value| value}
https://stackoverflow.com/questions/2540435/how-to-sort-a-ruby-hash-by-number-value
然後依序掃過每個 key-value pair 符合條件的才將字串輸出至結果陣列裡
符合條件的 range.include?(value)
最後將陣列以 join(', ') 以符合題目條件
=end

def list_in_range(hash, range)
  hash_array = hash.sort_by{|key, value| value}
  result = []
  hash_array.each do |key_value_array|
    if range.include?(key_value_array[1])
      result << "#{key_value_array[0]} (#{key_value_array[1]})"
    end
  end

  return result.join(', ')
end
