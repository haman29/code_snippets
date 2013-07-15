# @see http://d.hatena.ne.jp/t-wada/20100228/p1

class MessageFilter
  def initialize word
    @word = word
  end
  def detect? text
    text.include? @word
  end
end
