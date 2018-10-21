def make_fixed(number)
   var = number.to_f
   return var
end

def make_int(number)
   var = number.to_i
   return var
end

x0_defined = false
R0_defined = false
xmax_defined = false

while not(x0_defined)
  puts "Enter initial value for x"
  x_old = make_fixed(gets.chop)
  if x_old > 0 and x_old < 1 
    puts "x(0) = #{x_old}"
    x0_defined = true
  else
    puts "Initial value must be between 0 and 1"
  end
end

while not(R0_defined)
  puts "Enter initial value for R"
  r_value = make_fixed(gets.chop)
  if r_value > 0 and r_value < 4 
    puts "R = #{r_value}"
    R0_defined = true
  else
    puts "Initial value must be between 0 and 4"
  end
end

while not(xmax_defined)
  puts "How many iterations?"
  x_max = make_int(gets.chop)
  if x_max > 0
    puts "Will iterate = #{x_max} times"
    xmax_defined = true
  else
    puts "Must be a number greater than 0"
  end
end

n=1
while n <= x_max do
  x_new = r_value*x_old*(1-x_old)
  puts "x_n = #{x_new}"
  x_old = x_new
  n += 1
end

