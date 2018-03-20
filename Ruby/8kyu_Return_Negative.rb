def makeNegative(num)
  if (num == 0)
    return 0
  elsif num > 0
    puts "#{-num}"
    return (-num)
  else
    return num
  end
end



makeNegative(2)

# 這樣寫似乎太複雜了
def makeNegative(num)
  return 0 if num == 0
  return num > 0 ? -num : num
end
