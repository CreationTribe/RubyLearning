def polar(x,y)
  #returns an array when returning two values separated by a comma
  return Math.hypot(y,x), Math.atan2(y,x)
end

def cartesian(magnitude, angle)
  [magnitude * Math.cos(angle),magnitude * Math.sin(angle)]
end

x,y = [1,1]
distance, theta = polar(x,y)

puts distance, theta
puts polar(4,5)
puts polar(1,1)
puts cartesian(0.45,120)
puts cartesian(3,90)
