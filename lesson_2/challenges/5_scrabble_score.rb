class Scrabble
  SCORES = {
    %w(A E I O U L N R S T) => 1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10
  }

  def initialize(word)
    @word = word
  end

  def score
    result = 0
    return 0 if @word.nil? || @word.empty? || @word.strip.empty?
    @word.upcase.chars.each do |letter|
      SCORES.each do |letter_arr, score|
        result += score if letter_arr.include?(letter)
      end
    end
    result
  end

  def self.score(word)
    temp = Scrabble.new(word)
    temp.score
  end
end