require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "DUZg4ujUSIMZIHWSHLKgAn7FP"
  config.consumer_secret     = "sidbLqbBG5dNDQolU1ZJHVAGX0ePpQppd0pJ7wu8YIZCF3btxH"
  config.access_token        = "70911616-jp8HGjK8tGJRgzKw0pazNOZPFyaMD60870GMpn967"
  config.access_token_secret = "p5lkGNPUvrc7NyKe39cKia955fvL0FZL9Jy8e41WMyvP6"
end
# client.user_timeline('haman29')

# client.search("to:justinbieber marry me", :result_type => "recent").take(3).each do |tweet|
  # puts tweet.text
# end

client.search("from:kahonyun #澪たん日記 -rt", :lang => "ja").take(10)
