#this is an EXPLICIT Proc instead of implicit, which is not give a variable name for execution

def make_maxer(&p)
  p
end

maxer = make_maxer do |x,y|
  if x > y
    x
  else
    y
  end
end

puts maxer.call(2,10)
puts maxer.class

# Normal Proc usage
minner = Proc.new {|x,y| [x,y].min}

puts minner.call(2,10)
puts minner.call(10,2)

puts minner.class