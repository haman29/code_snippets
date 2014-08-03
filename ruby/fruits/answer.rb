brackets = [%w(\\( \\)), %w(\\[ \\]), %w(\\{ \\})]
File.foreach('./fruits.log') do |line|
  p brackets.map {|bracket|
    open, close = bracket.first, bracket.last
    line.scan(/#{open}([^#{close}]*)#{close}/).flatten.map{|pattern|
      pattern.split(/[\s#{brackets.flatten.join}]/).select{|s| s != ""}.size
    }.max
  }.compact.max
end
