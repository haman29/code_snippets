# i = 0
# while true
  # i += 1
  # puts i
  # sleep 1
  # break if i == 10
# end
# puts 'break!!'


def waiting actual
  interval = 0.5
  i = 0
  while true
    if actual == yield
      return 'true!!'
    end
    i += interval
    puts '.'
    sleep i
  end
  'false!!'
end

def return_10
  10
end

a = waiting(10) do
  return_10
end
puts a
