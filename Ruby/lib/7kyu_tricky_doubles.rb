=begin
題意:
給一個正?整數
tricky double 表示數字是重複自身兩次的數
44, 8787, 100100 都算是
如果不是 tricky double 就把輸入的數 * 2 後回傳
如果是 tricky double 就直接回傳該數
---
測試規格:
輸入 15 應該得到 30
輸入 100 應該得到 200
輸入 4343 應該得到 4343
---
編寫測試規格程式:
檔名為 7kyu_tricky_doubles_spec.rb
---
解法:
想試正規表式法
\^(\d+)\1$\ =~ n
=end
def tricky_doubles(n)
  if (/^(\d+)\1$/ =~ n.to_s) != nil
    return n
  else
    return 2 * n
  end
end
