def hoge1 args
  p args
end
def hoge2 *args
  p args
end
def hoge3 **args
  p args
end

hoge1 a: 'b', c: 'd'
hoge2 a: 'b', c: 'd'
hoge3 a: 'b', c: 'd'

hoge1({a: 'b', c: 'd'})
hoge2({a: 'b', c: 'd'})
hoge3({a: 'b', c: 'd'})
