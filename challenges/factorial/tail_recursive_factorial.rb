def tail_recursive_factorial(total, n)
  if n == 0
    return total
  end

  tail_recursive_factorial(total * n, n - 1)
end
