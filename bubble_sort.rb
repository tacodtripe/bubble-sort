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
