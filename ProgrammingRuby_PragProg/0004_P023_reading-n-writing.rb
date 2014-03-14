#short and sweet
# apparently, for the number '%5.2f' is supposed to limit the ouput to 5 characters with 2 decimal places
# however, it seems only the decimal indicator works, the 5 doesn't seem to limit the number of digits
# that are allowed to be printed out *shrugs*
printf("Number: %5.2f\nString: %s\n",877548382.345,"this is my friggin string")

line = gets #gets is the cli input
print line

# remember, the global variable: $_ is a magic var that's slowly being deprecated ... know it, don't use it
# $_ contains last input, likewise, a comparison against nothing will match against $_
# thus, the following should work:
#while gets
#  if /Ruby/
#    print
#  end
#end
# ... uh, ok - looks like it didn't work ... good - fine, fuck you $_

# ARGF is apparently similar to $_ in that it represents the programs input files
# cool sidenote, the .each method keeps the input stream open. You can continue to type
# whatever you want and hit enter. Until a line has "Ruby" in it, it won't print.
# would be a good control structure for a text based game-e-o!
ARGF.each {|line| print line if line =~ /Ruby/}
