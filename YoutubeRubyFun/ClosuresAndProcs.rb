def run_block
  yield if block_given?
end

run_block

class Array
  def random_each(&b)
    p b #check what's going on
    shuffle.each do |x|
      b.call x
    end
  end
end

[1,2,3,4,5].random_each do |x|
  puts x
end

# ways to call a Proc block
myProc = Proc.new do |x|
  puts "This is my proc: #{x}"
end

myProc.call(10)

myProc.(40)

myProc[44]

myProc === 300 #case equality operator

# doin some more proc calling

several = Proc.new {|number| number > 3 && number < 8}
many = Proc.new {|number| number > 3 && number < 8}
few = Proc.new {|number| number == 3}
couple = Proc.new {|number| number == 2}
none = Proc.new {|number| number == 0}

a.upto(18) do |number|
  print "#{number} items is"

  case number
    when several
      puts "several"
    when many
      puts "many"
    when few
      puts "few"
    when couple
      puts "couple"
    when none
      puts "none"
    else
      puts "nothing at all"
  end
end
