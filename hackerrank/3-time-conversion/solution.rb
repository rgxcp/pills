def timeConversion(s)
  format = s[8..9]
  hour = s[0..1]

  if format == "AM" && hour == "12"
    s[0..1] = "00"
  end

  if format == "PM" && hour != "12"
    s[0..1] = "#{hour.to_i + 12}"
  end

  s[0..-3]
end
