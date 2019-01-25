puts "歡迎來到洗珠刷任務計算機 ver 1.0。"
puts "投資理財有賺有賠，使用前請記得異地備份遊戲存檔。"
puts "這個程式會幫你算 要刷的任務數量 跟 判斷需不需要大地鍊金。"

print "1. 輸入洗珠預測表的現在位置(第幾列)："
locate_position = gets.chomp

print "2. 輸入要到達的洗珠預測表位置(你要的珠子在哪一列)："
target_position = gets.chomp

print "3. 輸入你現在任務前進的步數是 A1/B1/C2："
mission_position = gets.chomp

# 計算洗珠表要前進的步數
request_steps = target_position.to_i - locate_position.to_i

# 需要跑的任務數量
missions_count = 0

# 計算步數需要幾輪任務 round，1 round = A1/B1/C2 都跑過一輪
# 一輪有三個任務
# 所以一輪的任務增加步數是 1 + 1 + 2 = 4 步
# 先把不完整的一輪跑完
if mission_position == "A1"
  # 這一輪還有兩個任務要跑：B1/C2
  missions_count += 2
  # 前進步數 = 1 + 2
  request_steps -= 3
elsif mission_position == "B1"
  # 這一輪還有一個任務要跑：C2
  missions_count += 1
  # 前進步數 = 2
  request_steps -= 2
elsif mission_position != "C2"
  mission_position = false
end
# 先計算跑完整輪數的任務
missions_count += request_steps / 4 * 3

# 再記算不到一輪的任務數量，也就是四個步數無法整除的餘數
remains_steps = request_steps % 4

=begin
有幾種情形：
1. remains_steps == 0 剛好 N輪，那就沒事

要考慮的情形：
2. remains_steps == 1
missions_count += 1 (A1 解決)

3. remains_steps == 2
missions_count += 2 (A1 + B1 解決)

4. remains_steps == 3
mission += 2 (A1 + B1 但是還剩一步)
這時候不能打任務，因爲任務步數是 C2，會跳過你指定的目標
所以這時候一定要用大地鍊金洗一步
=end

case remains_steps
when 0
  final_mission_position = "C2"
when 1
  missions_count += 1
  final_mission_position = "A1"
when 2
  missions_count += 2
  final_mission_position = "B1"
when 3
  missions_count += 2
  final_mission_position = "B1"
  need_earth_alchemy = true
end

puts "=====================================\n"
puts "估算結果："

puts "\n有 #{missions_count} 個任務要跑！\n"

if need_earth_alchemy == true
  puts "需要大地鍊金一次！！！"
  puts "需要大地鍊金一次！！！"
  puts "需要大地鍊金一次！！！\n"

  puts "因爲目前最終的任務步數是 B1，但是離指定目標步數還差\"一步\"，此時\"不能\"跑任務(步數 = C2)，跑兩步就會超過目標。"
  puts "建議可以先洗一次大地鍊金，這樣就只要記任務場次就好，還蠻容易忘記的。"
end

if mission_position == false
  puts "因爲你沒有提供正確的任務步數，無法精確計算，可能會有誤差，請記得先將遊戲存檔備份！！"
else
  puts "====================================="
  puts "會擔心的話，跑到倒數幾個任務時，先存檔備份！\n"
  puts "最終跑完 #{missions_count} 個任務後，任務步數會是 #{final_mission_position}！"
  if need_earth_alchemy == true
    puts "需要大地鍊金一次！！！"
  end
end
