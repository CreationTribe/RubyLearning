class MethCalDynBlk
  def many_many_parameters(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10)
    "#{p1}, #{p2}, #{p3}, #{p4}, #{p5}, #{p6}, #{p7}, #{p8}, #{p9}, #{p10}"
  end

  def many_many_whatevers(arg1, *arg2_array)
    my_return_string = ''
    arg2_array.each do |x|
      my_return_string += "#{x.to_s}, "
    end
    "#{arg1} and also ... #{my_return_string}"
  end

  def call_stuff
    many_many_parameters(*(1...11).to_a)
    many_many_whatevers('starts here boys', *('aa'...'cc'))

    times_or_plus
  end

  def times_or_plus
    print "(t)imes or (p)lus: "
    times = gets
    print "number: "
    number = Integer(gets)
    if times =~ /^t/
      calc = lambda {|n| n*number }
    else
      calc = lambda {|n| n+number }
    end
    # if an ampersand is placed before a parameter, ruby assumes it is a block and will associate it accordingly
    puts((1..10).collect(&calc).join('',''))
  end
end

mcd = MethCalDynBlk.new
puts mcd.call_stuff
