class Octal
  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 if @number.match(/[^0-7]/)

    result = 0
    multiplier = 1
    @number.chars.reverse.each do |digit|
      result += digit.to_i * multiplier
      multiplier *= 8
    end

    result
  end
end
