=begin
題意:
貓抓老鼠！
給一個地圖以及貓與老鼠的資訊要你判斷貓可不可以在指定步數下抓到老鼠
-------------------
解法:
看到 map 那些點就讓我想到了
要先解析貓與老鼠的 "位置" 資訊
1. 在那行的第幾個?
2. 在第幾行
"行數相減" + "位置相減" 就可以得到步數
根據比較指定步數與實際步數回傳 "Caught!" 或是 "Escaped!"

map = """\
..C......
.........
....m...."""

# 先觀察 map
p map # => "..C......\n.........\n....m...."
# 應該要先看 map 再來想解法的
# 可以從 C 與 m 間 \n 的數量判斷差了幾步
# 可以用 split("\n") 把三個字串分開來
# map.split("\n") => ["..C......", ".........", "....m...."]
# 然後逐個陣列元素 .each
# 找出 C 與 m 的位置後相減
# 也能夠用 陣列索引值標註這是第幾行
# 然後用 .abs method 保持正整數
=end

def cat_mouse(map, moves)
  line_number ,cat_line, mouse_line = 0, 0, 0
  cat_position = nil
  mouse_position = nil

  map.split("\n").each do |line|
    line_number += 1
    if line.include?("C")
      cat_line = line_number
      cat_position = line.index("C")
    end

    if line.include?("m")
      mouse_line = line_number
      mouse_position = line.index("m")
    end
  end

  return "boring without two animals" if cat_position == nil || mouse_position == nil
  if ((cat_line - mouse_line).abs + (cat_position - mouse_position).abs) <= moves
    return "Caught!"
  else
    return "Escaped!"
  end
end
