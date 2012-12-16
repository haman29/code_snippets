puts 'case1'
for n in [*1..50]
    if n % (3 * 5) == 0
        print 'fizzbuzz '
    elsif n % 3 == 0
        print 'fizz '
    elsif n % 5 == 0
        print 'buzz '
    else
        print "#{n} "
    end
end
puts

puts 'case2'
50.times { |n|
    n += 1
    if n % (3 * 5) == 0
        print 'fizzbuzz '
    elsif n % 3 == 0
        print 'fizz '
    elsif n % 5 == 0
        print 'buzz '
    else
        print "#{n} "
    end
}
puts

puts 'case 3'
puts [*1..50].map {|n|
    if n % (3 * 5) == 0
        'fizzbuzz'
    elsif n % 3 == 0
        'fizz'
    elsif n % 5 == 0
        'buzz'
    else
        n
    end
}.join(' ')

puts 'case 4'
puts [*1..50].map {|n|
    n % (3 * 5) == 0 ? 'fizzbuzz' : n % 3 == 0 ? "fizz" : n % 5 == 0 ? 'buzz' : n
}.join(' ')
