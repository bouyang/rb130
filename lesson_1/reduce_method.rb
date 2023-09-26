def reduce(arr, initial=nil)
  if initial.nil?
    if arr[0].is_a? Array
      initial = []
    elsif arr[0].is_a? Integer
      initial = 0
    elsif arr[0].is_a? String
      initial = ''
    end
  end
  
  acc = initial
  idx = 0

  while idx < arr.size
    acc = yield(acc, arr[idx])
    idx +=1
  end

  acc
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
#p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']