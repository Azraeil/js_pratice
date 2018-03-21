def no_space(x)
  x = x.split(' ')

  puts x.class

  string = ""

  0...x.length.times do |n|
    puts x[n]
    string += x[n]
  end

  puts string
  return string
end

no_space('8j aam')

=begin
https://stackoverflow.com/questions/975769/how-to-split-a-delimited-string-in-ruby-and-convert-it-to-an-array
# x.split('') 會回傳 array, 讓字串變陣列之後就很好處理了
# 而且我直接用 split(' ') ，就已經把空格拿掉了

# 原來字串能直接用 x.delete(' ')

# split(" ") 後面也能接 .join 將陣列直接接起來回傳成一個 string

# For String Integer without space as String
arr = "12345"

arr.split('')

output: ["1","2","3","4","5"]

# For String Integer with space as String
arr = "1 2 3 4 5"

arr.split(' ')

output: ["1","2","3","4","5"]

# For String Integer without space as Integer
arr = "12345"

arr.split('').map(&:to_i)

output: [1,2,3,4,5]

# For String
arr = "abc"

arr.split('')

output: ["a","b","c"]
=end
