require 'uri'
uri = URI::HTTPS.build({
  :host => 'www.example.com',
  :path => '/foo/bar',
  :query => [
    ['client_id', 'hoge'].join('='),
    ['aaa_id', 'fuga'].join('='),
  ].join('&'),
}).to_s
p uri # => https://www.example.com/foo/bar?client_id=hoge&aaa_id=fuga
