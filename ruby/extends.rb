class A
  def main
    a rescue puts 'fail'
    A.a
    self.class.a rescue puts 'fail'
  end
  def self.a
    puts 'a'
  end
end
class B < A
end

A.new.main
