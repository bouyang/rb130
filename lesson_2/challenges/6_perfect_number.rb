class PerfectNumber
  def self.classify(number)
    raise StandardError if number < 0

    divisors = []
    1.upto(number - 1) do |num|
      divisors << num if number % num == 0
    end

    return 'perfect' if divisors.sum == number
    return 'abundant' if divisors.sum > number
    return 'deficient' if divisors.sum < number
  end
end
