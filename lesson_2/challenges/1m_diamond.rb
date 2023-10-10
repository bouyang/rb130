=begin

letter: E
num: 5

4 spaces, A           n - r = 0
3 spaces, B, 1, B           = 1
2 spaces, C, 3, C           = 2
1 space, D, 5, D            = 3
0 spaces, E, 7, E           = 4

=end

class Diamond
  def self.make_diamond(letter)
    result = ''
    alphabet = ('A'..'Z').to_a
    num = alphabet.find_index(letter)

    num.downto(0) do |row|
      if num == row
        result << (" " * row) + alphabet[num - row] + (" " * row) + "\n"
      else
        result << (" " * row) + alphabet[num - row] + (" " * ((num - row) * 2 - 1)) + alphabet[num - row] + (" " * row) + "\n"
      end
    end
    1.upto(num) do |row|
      if num == row
        result << (" " * row) + alphabet[num - row] + (" " * row) + "\n"
      else
        result << (" " * row) + alphabet[num - row] + (" " * ((num - row) * 2 - 1)) + alphabet[num - row] + (" " * row) + "\n"
      end
    end
    result
  end
end