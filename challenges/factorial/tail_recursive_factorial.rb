def factorial(total, n)
  if n == 0
    return total
  end

  factorial(total * n, n - 1)
end

puts factorial(1, 0)
puts factorial(1, 1)
puts factorial(1, 2)
puts factorial(1, 3)
puts factorial(1, 4)
puts factorial(1, 5)
