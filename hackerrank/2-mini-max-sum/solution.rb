def miniMaxSum(arr)
  arr.sort!
  min = arr[0..3].sum
  max = arr[1..4].sum

  puts "#{min} #{max}"
end
