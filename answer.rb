require 'pry'

lines = File.read("numbers.csv").lines
#binding.pry

# 1. sum of first line - 569
first_line = lines.first
numbers_as_strings = first_line.chomp.split ","

# numbers = []
# numbers_as_strings.each do |ns|
#   numbers.push ns.to_i
# end
numbers = numbers_as_strings.map { |n| n.to_i}

running_total = 0
numbers.each do |n|
  # running_total = running_total + n
  running_total += n # need `.to_i` here if you didn't before
end

puts "Running total is: #{running_total}"

# 2. sum of all the lines - 10170
running_total = 0
lines.each do |line|
  numbers_as_strings = line.chomp.split ","
  numbers = numbers_as_strings.map { |n| n.to_i }

  line_total = 0
  numbers.each do |n|
    line_total += n
  end
  running_total += line_total
  puts "Sum of line: #{line_total}"
end

puts "Sum of file: #{running_total}"
