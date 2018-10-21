puts "enter initial value for x"
x_old = gets.chop.to_f
puts "x(0) = #{x_old}"

puts "enter initial value for R"
r_value = gets.chop.to_f
puts "R = #{r_value}"

puts "How many iterations?"
x_max = gets.chop.to_i
puts "Will iterate = #{x_max} times"

n=1
while n <= x_max do
  x_new = r_value*x_old*(1-x_old)
  puts "x_n = #{x_new}"
  x_old = x_new
  n += 1
end