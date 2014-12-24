class Fuga
  def b
    __method__
  end
end
class Hoge < Fuga
  def a
    __method__
  end
end

p Hoge.new.b
