def digitize(n)
  array = []
  array = n.to_s
  # array = "n"
  puts array

  new_array = []
  0...array.length.times do |x|
    new_array << array[x].to_i
  end

  new_array.reverse!
  puts new_array
  return new_array
end

digitize(34567)

=begin
reverse → new_ary
Returns a new array containing self‘s elements in reverse order.

[ "a", "b", "c" ].reverse   #=> ["c", "b", "a"]
[ 1 ].reverse               #=> [1]
reverse! → ary click to toggle source
Reverses self in place.

a = [ "a", "b", "c" ]
a.reverse!       #=> ["c", "b", "a"]
a                #=> ["c", "b", "a"]

# 原來驚歎號還有這樣的用法
=end

# 哦，codewar ruby 是 2.3 版，還沒有 .digits 能用
# 沒想到還挺麻煩的
