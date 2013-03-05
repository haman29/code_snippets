require 'net/https'
require 'uri'

#例1: POSTするだけ
# res = Net::HTTP.post_form(URI.parse('http://www.example.com/search'), {'q'=>'ruby', 'max'=>'50'})
# puts res.body

user_name = 'hamaan29'
repo_name = 'dotfiles'
user_authentication_token = 'hogefuga'

uri = URI.parse("https://api.github.com/repos/#{user_name}/#{repo_name}/hooks?access_token=#{user_authentication_token}")
p uri
p uri.request_uri
p uri.host
p uri.port

# request = Net::HTTP::Post.new(uri.request_uri,  initheader = {'Content-Type' =>'application/json'})
# request.body = {name: "web",  config: {url: "hogehogehogehoge"}}.to_json

# http = Net::HTTP.new(uri.host,  uri.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE
# http.set_debug_output $stderr

# response = nil
# http.start do |h|
    # response = h.request(request)
# end
