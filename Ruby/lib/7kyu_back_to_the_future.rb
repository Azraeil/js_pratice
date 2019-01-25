=begin
題意:
給一個與日期有關的字串像是 "Monday 1 January"
然後如果它的月份有符合下述條件之一，
January & October
April & July
September & December
February & March & November
This is because the number of days between the two months is divisible by 7.
要驗證那兩個月之間的天數是否能被 7 整除
像題目舉例的 就可以回傳 "Monday 1 October" 因為天數(273天)有符合能被 7 整除
回傳與它最接近的月份與日期，那個日期還要在該年內
---------------
想法 1:
不看月份的直接處理方式
要先處理字串，我採用的是 date class 的 strptime，查表後把時間字串格式化
並且強制年份不是閏年
設定一個離開的月份當作循環條件 <= 12 (要在當年內離開)
時間 A - 時間 B 就能得到天數，拿這個天數去 % 7 就能知道符不符合時間了
因為有可能日期不符規定 (像是二月有31天)，所以要用 rescue 避免程式因錯誤而暫停
並以此來當其中一個判斷條件，因為日期不符合也不可能符合題目所需
找到日期後再用 .strftime("%B") 轉換回題目所需的格式
不能直接用 leaving_date 轉換，因為 weekday 星期幾不一定會和題目一樣
=end

# 自 high 練習 Date class 與 strptime 版本
# def back_to_the_future(str)
#   require "date"
#
#   # 強制年份不會是閏年
#   arrived_date = Date.strptime(str + " 2001", "%A %d %B %Y")
#   leaving_month = arrived_date.month + 1
#
#   # 推估有無符合條件的月份
#   while leaving_month <= 12
#     leaving_date = Date.new(arrived_date.year, leaving_month, arrived_date.day) rescue "Invalid date!"
#
#     if leaving_date != "Invalid date!" && (leaving_date - arrived_date) % 7 == 0
#       p leaving_date
#       puts "I'm leaving here on #{str.split(" ").first} #{arrived_date.day} #{leaving_date.strftime("%B")}!"
#       return "I'm leaving here on #{str.split(" ").first} #{arrived_date.day} #{leaving_date.strftime("%B")}!"
#     end
#
#     leaving_month += 1
#   end
#
#   return "Doc, I can't get back to the future!"
# end
#
# back_to_the_future("Monday 1 January")

=begin
想法 2:
題目希望我們用的方法：
關鍵就是這幾個字串
January & October
April & July
September & December
February & March & November
像題目舉例 January 就要找上面該組的字串有沒有該月份
然後看看 "後面" 有沒有符合的月份
最後，一樣要驗證日期是否符合格式
matching_months = ["January & October", "April & July", "September & December", "February & March & November"]
split("&") 可以把前後月份分開
strip 可以把空格去掉
這樣還是有點麻煩
=end

def back_to_the_future(str)
  require "date"
  matching_months = ["January & October", "April & July", "September & December", "February & March & November"]

  # str = "Monday 1 February"
  arrived_month = str.split(" ").last
  leaving_month = ""

  matching_months.each do |months|
    if months.include?(arrived_month)
      # 把該月份後面的月份給 leaving_month
      (months.split("&").length).times do |index|
        if months.split("&")[index].include?(arrived_month)
          # 因為我是直接給字串後面的月份，所以有可能為 nil
          if months.split("&")[index+1] != nil
            leaving_month = months.split("&")[index+1].strip
          else
            return "Doc, I can't get back to the future!"
          end

          puts "I'm leaving here on #{str.split(" ")[0]} #{str.split(" ")[1]} #{leaving_month}"
          leaving_date = str.split(" ")[0] + " " + str.split(" ")[1] + " " + leaving_month

          # 檢查日期是否合理
          date_check = Date.strptime(leaving_date + " 2001", "%A %d %B %Y") rescue "Invalid date!"

          return "I'm leaving here on #{str.split(" ")[0]} #{str.split(" ")[1]} #{leaving_month}!" if date_check != "Invalid date!"
        end
      end
    end
  end
  return "Doc, I can't get back to the future!"
end
back_to_the_future("Monday 1 January")
