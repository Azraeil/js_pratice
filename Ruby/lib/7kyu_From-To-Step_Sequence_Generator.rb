=begin
題意:
如題目所述，給一個起始值 from_value 用 step_value 步進 到 to_value
將這些整數存到陣列裡回傳
-------------
想法:
從大到小或是從小到大都有可能，step 想成差值(階梯)比較合適
題目有說，階梯不能是 0 或 負的
先判斷 from 與 to 誰比較大
if from > to, result << (from - step)
if from < to, result << (from + step)
=end
def generator(from, to, step)
  result = [from]
  index = 0
  return [] if step <= 0
  if from > to
    ((from - to)/step).times do
      result << (result[index] - step)
      index += 1
    end
  else
    ((to - from)/step).times do
      result << (result[index] + step)
      index += 1
    end
  end
  return result
end

# 寫了這答案就覺得有更好的寫法
# 果然 原來有 step method
def generator(from, to, step)
  return [] if step <= 0
  step = -step if from > to
  from.step(to, step).to_a
end
