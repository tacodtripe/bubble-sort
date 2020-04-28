def bubble_sort(input_array)
  n = input_array.length
  (0..n - 1).each do |i|
    (0..n - 2 - i).each do |a|
      next unless input_array[a] > input_array[a + 1]

      number_holder = input_array[a]
      input_array[a] = input_array[a + 1]
      input_array[a + 1] = number_holder
    end
  end
  input_array
end
p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(input_array)
  n = input_array.length
  (0..n - 1).each do |i|
    (0..n - 2 - i).each do |a|
      words = yield(input_array[a], input_array[a + 1]).positive?
      next unless words

      number_holder = input_array[a]
      input_array[a] = input_array[a + 1]
      input_array[a + 1] = number_holder
    end
  end
  input_array
end

p bubble_sort_by(%w[hi hello hey]) { |first, second|
  first.length - second.length
}

p bubble_sort_by(%w[my name is Maurice and my Partner is Raul]) { |first, second|
  first.length - second.length
}
