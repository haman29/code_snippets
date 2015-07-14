def password_gen(size=8)
    # []は配列, sample() はランダムに一つ取り出す
    # return は省略できる
    [*0..9,  *'a'..'z',  *'A'..'Z'].sample(size).join
end
def password_gen2(size=8)
    p [*0..9,  *'a'..'z',  *'A'..'Z'].sample(size).join
end

list = ARGV[1].to_i.times.map do
  password_gen ARGV[0].to_i
end
list.each{|str| puts str}
