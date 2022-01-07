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
