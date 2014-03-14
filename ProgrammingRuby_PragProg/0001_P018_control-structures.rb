# simple control structures
my_count = 128
my_other_var = 509

while my_count > 5 and my_other_var > 98
  if my_count % 5 == 0
    my_count += 2
    my_other_var -= 12
  end

  my_other_var += 3 if my_other_var % 8 == 0

  if my_count > 100
    my_count -=1
  elsif my_count > 50 or my_count < 100
    my_count -= 5
  end

  puts "my_count: #{my_count} and my_other_var: #{my_other_var}"

  puts "my_other_var::: #{my_other_var}" while my_other_var > 3 and my_other_var < 33
end