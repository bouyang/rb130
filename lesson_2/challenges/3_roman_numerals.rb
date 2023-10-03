class RomanNumeral

  NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  def initialize(number)
    @number = number
  end

  def to_roman
    numeral_result = ''

    NUMERALS.each do |numeral, number|
      loop do
        if @number >= number
          numeral_result << numeral
          @number -= number
        end
        break if @number < number
      end
    end

    numeral_result

    # Alternate solution
    # numeral_result = ''
    # loop do
    #   if @number < 4
    #     numeral_result << 'I'
    #     @number -= 1
    #   elsif @number == 4
    #     numeral_result << 'IV'
    #     @number -= 4
    #   elsif @number < 9
    #     numeral_result << 'V'
    #     @number -= 5
    #   elsif @number == 9
    #     numeral_result << 'IX'
    #     @number -= 9
    #   elsif @number < 40
    #     numeral_result << 'X'
    #     @number -= 10
    #   elsif @number < 50
    #     numeral_result << 'XL'
    #     @number -= 40
    #   elsif @number < 90
    #     numeral_result << 'L'
    #     @number -= 50
    #   elsif @number < 100
    #     numeral_result << 'XC'
    #     @number -= 90
    #   elsif @number < 400
    #     numeral_result << 'C'
    #     @number -= 100
    #   elsif @number < 500
    #     numeral_result << 'CD'
    #     @number -= 400
    #   elsif @number < 900
    #     numeral_result << 'D'
    #     @number -= 500
    #   elsif @number < 1000
    #     numeral_result << 'CM'
    #     @number -= 900
    #   elsif @number <= 3000
    #     numeral_result << 'M'
    #     @number -= 1000
    #   end
    #   break if @number == 0
    # end
    # numeral_result
  end
end