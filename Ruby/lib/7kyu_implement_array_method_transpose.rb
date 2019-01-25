=begin
題意:
題目要我們把與陣列有關的方法 transpose 改寫成 transpose!
也就是說原本的 array.transpose 並不會去改變 array
但是題目希望我們的 transpose! 會去改變 array
而且在陣列長度不一致的時候要出現 error
或是陣列維度不是 2 的時候要出現 error
-----
想法:
題目要我們把解法寫在 class Array 裡面，所以這應該跟 OOP 有關囉
從測試例子可以看到，這是一個 instance method 就是陣列能夠直接使用的 method
self = array.transpose 會出錯
要找方法改變 self 的值
google 答案發現 replace 可以用於 string, array, 與 hash
或是指改變 self[index] 的值也行
=end

class Array
  def transpose!
    array = self.transpose
    self.replace(array)
    return array
  end

  def test
    self.delete(self[0])
    # self[0..0] = []
    p self.object_id
    # self = []
    return self
  end
end

p [1, 2, 3].test
p [1, 2, 3].test.object_id
