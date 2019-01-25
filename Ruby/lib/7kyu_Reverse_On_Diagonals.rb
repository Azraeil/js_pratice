=begin
題意:
給一個 二維矩陣，一個矩陣裡面包含多個一維矩陣
matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
]
目標就是把對角線上的所有陣列元素互換，並將互換元素後的矩陣回傳
--------------
想法:
也就是把第一個陣列的第一個元素，與最後一個陣列的最後一個元素互換
然後把第一個陣列的最後一個元素與最後一個陣列的第一個元素互換
首先要先練習取用多維陣列
matrix[0] 是第一個陣列
matrix[0][0] 是第一個陣列的第一個陣列元素
matrix[0][-1] 是第一個陣列的最後一個陣列元素
對第一行陣列做的事情就是
the top left corner to the bottom right one
matrix[0][0], matrix[-1][-1] = matrix[-1][-1], matrix[0][0]
the top right corner to the bottom left one
matrix[0][-1], matrix[-1][0] = matrix[-1][0], matrix[0][-1]
第二行，如果超過 matrix.length > 3
matrix[1][1], matrix[-2][-2] = matrix[-2][-2], matrix[1][1]
matrix[1][-2], matrix[-2][1] = matrix[-2][1], matrix[1][-2]

接著逐個陣列掃瞄並移動 index 進行互換
還有關鍵是掃描幾行，假設有 n 行，那應該是掃 n / 2 行?
從上面的規律可以觀察出元素索引值要獨立出來處理比較好
=end
def reverse_on_diagonals(matrix)
  top_array_index = 0
  bottom_array_index = -1
  left_element_index = 0
  right_element_index = -1

  (matrix.length/2).times do
    # the top left corner to the bottom right one
    matrix[top_array_index][left_element_index], matrix[bottom_array_index][right_element_index] = \
    matrix[bottom_array_index][right_element_index], matrix[top_array_index][left_element_index]

    # the top right corner to the bottom left one
    matrix[top_array_index][right_element_index], matrix[bottom_array_index][left_element_index] = \
    matrix[bottom_array_index][left_element_index], matrix[top_array_index][right_element_index]

    top_array_index += 1
    bottom_array_index -= 1
    left_element_index += 1
    right_element_index -= 1
  end

  return matrix
end
[
  [43,455,32,103],
  [102,988,298,981],
  [309,21,53,64],
  [2,22,35,291]
]

[
  [291, 455, 32, 2],
  [102, 53, 21, 981],
  [309, 298, 988, 64],
  [103, 22, 35, 43]
]
