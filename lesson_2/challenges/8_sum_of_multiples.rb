class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(max)
    result = []
    @numbers.each do |div|
      1.upto(max - 1) do |dividing_num|
        result << dividing_num if dividing_num % div == 0
      end
    end

    result.uniq.sum
  end

  def self.to(max)
    SumOfMultiples.new(3, 5).to(max)
  end
end