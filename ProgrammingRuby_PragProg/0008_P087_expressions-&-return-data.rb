class Consciousness
  # note for fuckin fuck's sake. when something is defined via attr_accessor - it is now AN INSTANCE variable - gods damnit!
  attr_accessor :emotion

  def initialize
    @emotion = :in_being
  end

  def similar(other)
    true if emotion == other
  end
end



class Fixnum
  alias old_plus +

  def +(other)
    # Integer.succ returns the integer + 1
    # ie: 234.succ -> 235
    old_plus(other).succ
  end
end



class CommandExpansion
  def ls
    command_return = `ls`
    "#$? #{command_return}"
  end

  def ll
    %x{ll}
  end
end



alias old_backquote `
def `(cmd)
  result = old_backquote(cmd)
  if $? != 0
    fail "Command #{cmd} failed: #$?"
  end
  result
end

print `date`
print `data`


com_ex = CommandExpansion.new
puts com_ex.ls
puts com_ex.ll


con = Consciousness.new
foc = Consciousness.new
con.emotion = :satiated

attn = if con.emotion == :frustrated
         if foc.similar con.emotion
           :comfortable
         else
           :uncomfortable
         end
       else
         :content
       end

puts attn
