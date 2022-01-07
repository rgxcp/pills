def exists?(array, item)
  array.each do |value|
    return true if value == item
  end

  false
end

def linear_search(input_array, search_value)
  input_array.each_with_index do |value, index|
    return index if value == search_value
  end

  nil
end

def binary_search(input_array, search_value)
  lower_bound = 0
  upper_bound = input_array.size - 1

  while lower_bound <= upper_bound
    midpoint = (lower_bound + upper_bound) / 2
    element = input_array[midpoint]

    if search_value == element
      return midpoint
    end

    if element < search_value
      lower_bound = midpoint + 1
    end

    if element > search_value
      upper_bound = midpoint - 1
    end 
  end

  nil
end
