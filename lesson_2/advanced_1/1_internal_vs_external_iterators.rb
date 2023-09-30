factorial = Enumerator.new do |yielder|
  n = 0
  sum = 0
  loop do
    if n == 0 || n == 1
      sum = 1
    else
      sum *= n
    end
    yielder << sum
    n += 1
  end
end


7.times {|_| puts factorial.next}

puts factorial.next
puts factorial.next
puts factorial.next

factorial.rewind

7.times {|_| puts factorial.next}

factorial.each_with_index do |value, idx|
  puts "#{idx}! => #{value}"
  break if idx > 6
end