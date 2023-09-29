def step(start_val, end_val, step_val)
  current = start_val

  while current <= end_val
    yield(current)
    current += step_val
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }