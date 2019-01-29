=begin
題意:
給兩個字串 str1 與 str2
找出 str1 有沒有 str2 的 substing
大小寫字母視為相同(所以要先將兩個字串轉換成全部小寫)
--------
規格測試:
../spec/7kyu_common_substrings_spec.rb
--------
想法:
應該還是用正規表式法比對最快
把 str2 兩個兩個依序抓出來與 str1 比對
若有找到則回傳 true 沒有則回傳 false
=end

def substring_test(str1, str2)
  str1.downcase!
  str2.downcase!
  (0..str2.size-2).each do |index|
    return true if str1 =~ /([#{str2[index]}][#{str2[index+1]}])/
  end
  return false
end
