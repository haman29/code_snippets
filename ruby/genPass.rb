def password_gen(size=8)
    # []は配列, sample() はランダムに一つ取り出す
    # return は省略できる
    [*0..9,  *'a'..'z',  *'A'..'Z'].sample(size).join
end
def password_gen2(size=8)
    p [*0..9,  *'a'..'z',  *'A'..'Z'].sample(size).join
end

p 'case1'
p 10.times.map { password_gen 8}
p 'case2'
10.times { password_gen2 8}
p 'case3'
10.times { |n| password_gen2 n+1}

=begin
1
["4pGO3qEK", "JObP8MNp", "VgIMiBTN", "ZVofD1Cw", "okK5yM7S", "nwbDzP6v", "0lRPgdKx", "GaDH39O8", "shD7mVwP", "dOuZj2HR"]
2
"fug6dZtG"
"wnTmla8p"
"uPM2EJkW"
"dwR1LJ67"
"hUZAMtdk"
"gbdT6t4c"
"oCgFfKlA"
"OTVi3WLq"
"dYrhVp3z"
"hXU7EVr2"
3
"f"
"4T"
"Dt1"
"v6FZ"
"ekDKi"
"ZFg8WO"
"tsCrYEZ"
"ESJmfPXU"
"QEWgJ6bet"
"PG1lxYb7qd"

=end
