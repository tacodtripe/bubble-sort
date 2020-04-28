def bubble_sort(input_array)
  n = input_array.length
  for i in 0..n - 1
    for a in 0..n - 2 - i
      if input_array[a] > input_array[a + 1]
        number_holder = input_array[a]
        input_array[a] = input_array[a + 1]
        input_array[a + 1] = number_holder
      end
    end
  end
  input_array
end
p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(input_array)
  n = input_array.length
  for i in 0..n - 1
    for a in 0..n - 2 - i
      words = yield(input_array[a], input_array[a + 1]).positive?
      if words
        number_holder = input_array[a]
        input_array[a] = input_array[a + 1]
        input_array[a + 1] = number_holder
      end
      end

  end
  input_array
end

p bubble_sort_by(["hi", "hello", "hey",]) { |first, second|
  first.length - second.length
}

p bubble_sort_by(%w(my name is Maurice and my Partner is Raul)) { |first, second|
  first.length - second.length
}
