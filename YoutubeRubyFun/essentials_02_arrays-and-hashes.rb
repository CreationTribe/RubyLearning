# remember: symbols have the same object_id - use them for keys in hashes

def tell_the_truth(options={})
  if options[:profession] == :lawyer
    'it could be believed that this is almost certainly not false'
  else
    true
  end
end

#code blocks!!! w00t!!!
12.times { puts "whateverz" } #the code block here is at the end being passed to 12.times

12.times do
  puts "my stuff to be repeated"
end

myBirds = ["this","that","the other","and some more"]
myBirds.each {|b| puts b}#this is nuts, but this is how awesome Ruby is!

#this is nuts, but this is how easy it is to add a method to an existing class
class Fixnum
  def my_times
    i=self #like "this" in Java or AS
    while i>0
      i=i-1
      yield #yield allows a code block to be passed in
    end
  end
end

def funky_monkey(i)
  begin
    yield i
    i += 1
  end until i > 10
end

def doit(&block) #the ampersand designates the argument as a block, which then can be called via .call
  block.call
end

def passit(&block)
  doit(&block)
end

passit {puts "I'm a fuckin' block!!!"}

funky_monkey(1) {|i| puts "funky monkey #{i}"}

5.my_times {puts "eat local honey"}

puts tell_the_truth
puts tell_the_truth :profession=>:lawyer