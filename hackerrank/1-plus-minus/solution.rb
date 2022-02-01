def plusMinus(arr)
  positive_values = 0
  negative_values = 0
  zero_values = 0

  arr.each do |value|
    if value.positive?
      positive_values += 1
    elsif value.negative?
      negative_values += 1
    else
      zero_values += 1
    end
  end

  puts positive_values.fdiv(arr.size).round(6)
  puts negative_values.fdiv(arr.size).round(6)
  puts zero_values.fdiv(arr.size).round(6)
end
