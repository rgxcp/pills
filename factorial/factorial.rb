def factorial(n)
  if n == 0
    return 1
  end

  result = 1
  n.downto(1) do |i|
    result *= i
  end
  result
end

puts factorial(0)
puts factorial(1)
puts factorial(2)
puts factorial(3)
puts factorial(4)
puts factorial(5)
