class A
  class << self
    def a
      'a'
    end
    def b
      a
    end
    def c
      b
    end
  end
end
