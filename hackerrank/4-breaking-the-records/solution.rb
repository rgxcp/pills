def breakingRecords(scores)
  minimums = []
  maximums = []
  minimum_breaks = 0
  maximum_breaks = 0

  scores.each_with_index do |score, index|
    if index == 0
      minimums << score
      maximums << score
    else
      last_minimum = minimums[index - 1]
      current_minimum = last_minimum < score ? last_minimum : score
      minimums << current_minimum
      minimum_breaks += 1 if current_minimum != last_minimum

      last_maximum = maximums[index - 1]
      current_maximum = last_maximum > score ? last_maximum : score
      maximums << current_maximum
      maximum_breaks += 1 if current_maximum != last_maximum
    end
  end

  [maximum_breaks, minimum_breaks]
end
