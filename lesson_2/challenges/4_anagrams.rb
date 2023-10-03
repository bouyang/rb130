class Anagram
  def initialize(word)
    @word = word
  end

  def match(arr)
    result = []
    arr.each do |test_word|
      if (test_word.downcase.chars.sort == @word.downcase.chars.sort) && (test_word.downcase != @word.downcase)
        result << test_word
      end
    end
    result
  end
end