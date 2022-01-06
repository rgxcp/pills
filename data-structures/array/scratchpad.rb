def exists?(array, item)
  array.each do |value|
    return true if item == value
  end
  false
end

cars = ["Mazda", "BWM", "Rolls Royce"]

puts exists?(cars, "Bentley")
puts exists?(cars, "Rolls Royce")
