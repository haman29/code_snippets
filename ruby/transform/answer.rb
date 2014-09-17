require 'set'
require 'debugger'

class Hoge

  def initialize start, goal
    @start = start
    @goal = goal
    @dic = Set.new(open('./dictionary.txt').read.split("\n"))
    @already_set = Set.new([start])
  end

  def solve
  end

  # def next_set current=@start
    # lists = (0...current.size).map { |i|
      # ('a'..'z').to_a.delete_if{|c| c == current[i]}.map { |c|
        # chars = current.chars
        # chars[i] = c
        # target = chars.join("")
        # return '見つかった' if target == @goal
        # target if ! @already_set.include?(target) && @dic.include?(target)
      # }.compact
    # }.select{|d| ! d.empty?}.flatten

    # lists.each{|list| @already_set.add(list)}

    # p lists

    # lists.each{|l| next_set(l)}
  # end

end

start, goal = 'free', 'work'
hoge = Hoge.new(start, goal)
p hoge.solve
