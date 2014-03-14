def necessary_func(jibberish)
  yield jibberish
end

#the following are code blocks:
marks_talking = "Mark: Nothin much dude, brah! What's up with you brah?!\n";
necessary_func(marks_talking) {|x| puts "Jake: He brah, what's up brah?!\n#{x}" } #encased in curly braces, usually reserved for one-line blocks
necessary_func('who dropped the funk?') do |x|
  my_sqrt = Math.sqrt(25)
  puts "#{x}, #{my_sqrt} is my square root funk!\n" * my_sqrt
end

5.times {|x| puts "#{x} out of five times"}

manimals = %w(hawkMan DolphinGirl DogBoy MonkeyBoy Monarchman CatWoman BatMan)
manimals.each {|manimal| puts "Then I turned, and suddenly I saw #{manimal}!!!"}

('f'..'m').each {|letter| puts "then there's #{letter},"}

my_long_number_string = ''
(144..788).each {|number| my_long_number_string.concat(number).concat(", ")}
puts my_long_number_string

my_long_number_string = ''
(144..788).each {|number| my_long_number_string.concat(number.to_s.concat(", "))}
puts my_long_number_string

200.upto(222) {|x| print x}