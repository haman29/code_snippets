class A
  attr_accessor :flg
  def initialize
    @flg = true
  end
end

class B < A
  def disable_flg
    @flg = false
  end
  def enable_flg
    @flg = true
  end
end

a = A.new
p a.flg

b = B.new
p b.flg

b.disable_flg
p b.flg

b.enable_flg
p b.flg
