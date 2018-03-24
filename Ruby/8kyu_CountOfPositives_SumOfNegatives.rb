def count_positives_sum_negatives(lst)
  count_positives = 0
  sum_negatives = 0

  lst.length.times do |n|
    if lst[n] > 0
      count_positives += 1
    elsif lst[n] < 0
      sum_negatives += lst[n]
    end
  end
  puts [count_positives, sum_negatives]
  return [count_positives, sum_negatives]
end


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]

count_positives_sum_negatives(arr)
