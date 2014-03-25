#def fact(n)
#  if n == 0
#    1
#  else
#    n * fact(n-1)
#  end
#end
#
#puts fact(ARGV[0].to_i)
#
#
#
#words = ['foobar', 'baz', 'quux']
#secret = words[rand(3)]
#
#print "guess? "; STDOUT.flush
#while guess = STDIN.gets
#  guess.chop!
#  if guess == secret
#    puts "You win!"
#    break
#  else
#    puts "Sorry, you lose."
#  end
#  print "guess? "; STDOUT.flush
#end
#puts "the word is #{secret}"
#
#

st = "/033[7m"
en = "/033[m"

puts "Enter an empty string at any time to exit."

while true
  print "str> "; STDOUT.flush; str = gets.chop
  break if str.empty?
  print "pat> "; STDOUT.flush; pat = gets.chop
  break if pat.empty?
  re = Regexp.new(pat)
  puts str.gsub(re,  "#{st}\\&#{en}")
end
