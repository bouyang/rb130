class Robot
  @@robot_names = []

  def name
    return @name unless @name.nil?
    @name = generate_random_name
    @@robot_names << @name
    @name
  end

  def reset
    @@robot_names.delete(@name)
    @name = nil
  end

  private

  def generate_random_name
    name = ''
    loop do
      letters = ('A'..'Z').to_a
      numbers = (0..9).to_a

      name << letters.sample
      name << letters.sample
      name << numbers.sample.to_s
      name << numbers.sample.to_s
      name << numbers.sample.to_s

      break unless @@robot_names.include?(name)
    end
    name
  end
end