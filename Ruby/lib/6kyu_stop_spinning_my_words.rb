=begin
題意:
很清楚是要我們只把字串長度在 5 以上的字翻轉
並回傳整個句子
想法:
用 split 拆句子 然後逐個字串判斷字串長度決定是否翻轉字串
=end
def spinWords(sentence)
  result = []
  sentence.split(" ").each do |word|
    word.size >= 5 ? (result << word.reverse) : (result << word)
  end

  return result.join(' ')
end
