# ruby version 2.1.5
def hoge
  a = []
  def fuga! aa
    aa << 'piyo'
    aa << 'bar'
  end
  a << 'hoge1'
  fuga! a
  a << 'hoge2'
  a
end

p hoge     # => ["hoge1", "piyo", "bar", "hoge2"]
p fuga! [] # => ["piyo", "bar"]

# fugaを外から参照できるんですねぇー
