def assert actual, expected
  actual == expected ? true : (raise "\nactual: #{actual}\nexpected: #{expected}")
end

def conbination_slow array
  array.map{|s1|
    array.map{|s2|
      array.map{|s3|
        [s1, s2, s3]
      }
    }
  }.flatten(2)
end

I = %w(a b c d e f g h)
N = I.count

# 計算量: O(n**n)
def conbination current, m
  N.times.each do |i|
    if m == 1
      current << I[i]
      puts current.join
      current.pop
    else
      current << I[i]
      conbination(current, m-1)
      current.pop
    end
  end
end

conbination([], N)
assert conbination_slow(%w(a b c)), @result

II = 'abc'
NN = II.size
def conbination
 p = []
 p << II * (NN**(NN-1))
 p << NN.times.map{|i| (II[i] * NN) }.join * NN
 p << NN.times.map{|i| (II[i] * (NN**(NN-1))) }.join
 p.map(&:chars).transpose
end

# O(n**2)
# O(n**2 + n**(n+1))
def conbination2 input
  # input = 'abc'
  nn = input.size
  data = nn.times.map{|i|
    nn.times.map{|j| (input[j] * nn**i) }.join * nn**(nn-(i+1))
  }
  (nn**nn).times{|i| nn.times{|j| print data[j][i]}; puts '' }
end
conbination2('a')
conbination2('ab')
conbination2('abc')
conbination2('abcd')
conbination2('abcde')
conbination2('abcdef')
conbination2('abcdefg') # => 823543
conbination2('abcdefgh')

# TODO: 計算量を導く
# TODO: 計算量を減らす


