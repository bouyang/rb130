def birds(arr)
  yield arr
end

birds_arr = %w(raven finch hawk eagle)
birds(birds_arr) do |_, _, *raptors|
  puts raptors
end