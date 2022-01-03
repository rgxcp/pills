results = []

(1..20).each do |i|
  if i % 15 == 0
    results << "FizzBuzz"
  elsif i % 3 == 0
    results << "Fizz"
  elsif i % 5 == 0
    results << "Buzz"
  else
    results << i
  end
end

puts results.join(", ")
