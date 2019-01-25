=begin
題意:
給一個都是小寫英文字母的字串
再給一個參數整數 k
然後依照英文字母順序 'a', 'b', 'c', etc...
依序把字元從那個字串裡移除，k = 2，不是把所有的 'a' 與 'b' 移除
從舉例可以知道要先從 'a' 開始移除，如果 'a' 的個數 不夠的話再從 'b' 開始移除
回傳剩餘的字串
-------
虛擬碼想法:
我記得字串有方法可以用來刪指定的目標
"string".delete('s')，可以指定刪除的字串
中間可以用 - 號表示從誰到誰 "string".delete('a-i')
.delete 不會改變本來的字串，要改變字串的話要用 .delete!

但是這樣的刪法是有條件的，也就是當 該字母的個數 <= k 時，可以這樣刪
k 值的計算要另外處理
如果字母個數小於或等於 k，用 .delete!
如果字母個數大於 k 就要一個一個刪了，我是用老方法，轉成陣列再用 index 找出位置候用 delete_at 刪除，應該是有更好的方法

接下來問題是怎麼從參數 k 推導出那個英文字，從 ASCII 碼推算?
char 轉換成 ASCII: .ord
然後加上 k-1 後, 再用 .char 轉回英文字就能知道要數到哪個英文字了
=end

def solve string, k
  remove_letter = 'a'
  while k > 0 && string.size > 0
    if string.count(remove_letter) <= k
      k = k - string.count(remove_letter)
      string.delete!(remove_letter)
    else
      k.times do
        string_array = string.chars
        string_array.delete_at(string.index(remove_letter))
        string = string_array.join
      end
      k = 0
    end
    remove_letter = (remove_letter.ord + 1).chr
  end
  return string
end
