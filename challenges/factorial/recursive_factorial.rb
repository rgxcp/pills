def recursive_factorial(n)
  if n == 0
    return 1
  end

  n * recursive_factorial(n - 1)
end
