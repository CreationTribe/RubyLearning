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
    many_many_parameters(*(1...10).to_a)
    many_many_whatevers('starts here boys', *('aaa'...'ccc').to_s)
  end
end

mcd = MethCalDynBlk.new
puts mcd.call_stuff
