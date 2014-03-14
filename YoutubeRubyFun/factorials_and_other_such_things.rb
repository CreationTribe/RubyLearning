def factorial_chain(number)
  if number < 1
    raise "argument must be > 0"
  elsif number == 1
    1
  else
    number * factorial_chain(number-1)
  end
end

def factorial_short(num)
  raise "argument must be greater than 0" if num < 1
  return 1 if num == 1
  num * factorial_short(num-1)
end

puts factorial_chain(1)
puts factorial_chain(5)
puts factorial_chain(20)
#puts factorial_chain(0)
puts factorial_short(9)
puts factorial_short(3)
puts factorial_short(1)
puts factorial_short(0)
#common convention is to only use return statements if you really really have to