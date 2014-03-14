require 'rubygems'
require 'png'

def f(x,y)
  return true
  #((x^y)&((y-350)>>3))**2
end

canvas = PNG::Canvas.new(500,500)

0.upto(499) do |y|
  0.upto(499) do |x|
    if((f(x,y)>>12)&1)==1
      canvas[x,499-y] = PNG::Color::Black
    else
      canvas[x,499-y] = PNG::Color::White
    end
  end
end

png = PNG.new(canvas)
png.save 'Pattern.png'