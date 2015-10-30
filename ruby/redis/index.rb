require 'redis'
c = Redis.new

c.set :key1, nil
c.set :key2, nil

# now = Time.now
# 10000.times do
#   c.incr :key1
# end
# puts Time.now - now

# incrはpipelinedすると逆に遅くなる
# now = Time.now
# 10000.times do
#   c.pipelined { c.incr :key2 }
# end
# puts Time.now - now

# => 0.671377
# => 0.841448

puts c.get :key1
puts c.get :key2

# 2. hset
def time &block
  now = Time.now
  block.call
  puts Time.now - now
end

c.del 'hoge'
time do
  10000.times do |i|
    c.hset "hoge", "key#{i}", "val#{i}"
  end
end
puts c.hget "hoge", "key0"

c.del 'hoge'
time do
  c.pipelined do
    10000.times do |i|
      c.hset "hoge", "key#{i}", "val#{i}"
    end
  end
end
puts c.hget "hoge", "key0"

time do
  100000.times do
    c.ping
  end
end
time do
  c.pipelined do
    100000.times do
      c.ping
    end
  end
end
