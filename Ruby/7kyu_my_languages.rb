=begin
題意:
給一個 hash 表，一個字串對應一個整數
回傳根據那個整數並用升冪排序的字串陣列
----------------
想法:
sort_by ? 這題應該就是要跟我之前寫過的那題一樣
只是當初是直接給 陣列
這題是給 hash，key/value pair
依照 value 去排序
...乖乖回去翻，剛好複習
先處理 hash 把 key 取出來準備排序
並確定 value 是否大於等於 60
然後再用 .sort_by {|key| hash[key]}
=end

def my_languages(results)
  valid_results = []
  # 把符合要求的 key 取出來
  results.keys.each do |key|
    valid_results << key if results[key] >= 60
  end
  # 把 key 丟回 hash 拿到 value，根據 value 進行排序
  valid_results.sort_by! {|key| results[key]}
  # 題目要升冪排列
  return valid_results.reverse
end

results = {"Java" => 10, "Ruby" => 80, "Python" => 65}
