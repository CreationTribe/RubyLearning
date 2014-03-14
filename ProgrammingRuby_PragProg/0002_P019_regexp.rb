if /(Perl|Python)/ =~ "Python"
  puts "it matches with the snakes!"
end
#usual regexp stuff - I think it's definitely preg

#[.] == anything
#[*] == zero or more
#[+] == one or more
#[\s] == white space characters
#[\] == escape char

line = "this is my amazing line in Ruby. I also like Perl, and Python is pretty awesome. Le Perl, Le Python, Le Perl, Le Python"
puts line.sub(/Perl|Python/, 'PEEEERLZ!!! OR PYYYTHONZZZZ!!!')
puts line.gsub(/Python/, 'PY')
