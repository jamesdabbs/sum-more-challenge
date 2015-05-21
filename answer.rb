require 'pry'

lines = File.read("numbers.csv").lines

# 1. sum of first line - 569
def sum_one_line l
  numbers_as_strings = l.chomp.split ","
  running_total = 0
  numbers_as_strings.each do |n|
    running_total += n.to_f
  end
  return running_total
end

s = sum_one_line lines.first
puts "Sum of the first line is: #{s}"

# 2. sum of all the lines - 10170
running_total = 0
lines.each do |line|
  s = sum_one_line line
  running_total += s
end

# lines.map { |l| l.split(",").map { |n| n.to_i } }.flatten.reduce(:+)

puts "Sum of file: #{running_total}"

# 3. how many numbers in this file

ns = 0
lines.each do |i|
  number_of_numbers += i.split(",").count
end

# Other functional options
n2 = lines.map { |l| l.split(",") }.flatten.count
n3 = lines.map { |l| l.split(",").count }.reduce :+
binding.pry