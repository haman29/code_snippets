require 'feedjira'
ap Feedjira::Feed.fetch_and_parse(['http://curazy.com/feed'])
