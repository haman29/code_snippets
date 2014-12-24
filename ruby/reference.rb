class A
  attr_accessor :attributes
end

a = A.new
a.attributes = [1,2,3]
p a.attributes # => [1,2,3]

attributes = a.attributes
attributes.push(4)
p attributes # => [1,2,3,4]

p a.attributes # => [1,2,3,4] ([1,2,3] ではない)
