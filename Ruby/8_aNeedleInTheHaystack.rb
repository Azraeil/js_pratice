def find_needle(haystack)
  haystack.length.times do |n|
    puts haystack[n]
    if haystack[n] == "needle"
      puts n
      return "found the needle at position #{n}"
    end
  end
end

find_needle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])
