data = (1..10_000_000).to_a.map(&:to_s);nil

start_at = Time.now
data.join(',');nil
puts Time.now - start_at

start_at = Time.now
data.inject(''){|r, d| r << d; r};nil
puts Time.now - start_at

start_at = Time.now
data.inject(''){|r, d| r << d; r << ','; r};nil
puts Time.now - start_at

start_at = Time.now
data.inject(''){|r, d| r << "#{d},"; r};nil
puts Time.now - start_at

start_at = Time.now
data.inject(''){|r, d| r << d; r << ','; r}[0...-1];nil
puts Time.now - start_at


# 結果
# 1.19057
# 1.460416
# 3.247132
# 2.99402
# 2.339594

target_columns = UserItem.columns.map(&:name).sort

# case 1
start_at = Time.now
(1..100_000).each do
  target_columns.join(',')
end
puts Time.now - start_at
# => 0.492565

# case 2
start_at = Time.now
aaa = target_columns.join(',')
(1..100_000).each do
  aaa
end
puts Time.now - start_at
# => 0.304063
