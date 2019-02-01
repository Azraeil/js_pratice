=begin
題意:
collatz conjecture 考拉茲猜想
描述說給一個自然數 n，如果 n 是偶數就除以 2
如果 n 是奇數就 乘以 3 並 + 1
持續這兩個行為直到 n 最後等於 1
回傳這中間產生數列的長度
----
想法:
while n != 1

=end
def collatz(n)
  result = [n]
  while n != 1
    if n.even?
      n /= 2
      result << n
    else
      n = n*3 + 1
      result << n
    end
  end
  return result.size
end
