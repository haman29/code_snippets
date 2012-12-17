# 問題
# 2つのストリング(検索対象文字列/検索文字列)があり、検索文字列が含まれているかどうかを判定する関数を書いてください。
# これは反則か

def contain?(target_str, search_str)
    /#{search_str}/ =~ target_str ? true : false
end

target_str = 'abcdefg'
search_str_true = 'def'
search_str_false = 'hoge'

p contain?(target_str, search_str_true)  #=> true
p contain?(target_str, search_str_false) #=> false

p Regexp.new(search_str_true) =~ target_str ? true : false  #=> true
p Regexp.new(search_str_false) =~ target_str ? true : false #=> false

p target_str.match(/#{search_str_true}/) ? true : false  #=> true
p target_str.match(/#{search_str_false}/) ? true : false #=> false
