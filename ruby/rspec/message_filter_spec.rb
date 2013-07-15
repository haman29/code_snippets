# @see http://d.hatena.ne.jp/t-wada/20100228/p1

require 'rubygems'
require 'rspec'
require './message_filter.rb'

describe MessageFilter, 'with argument "foo"' do
  subject { MessageFilter.new('foo') }
  it { should be_detect('hello from foo') }
  it { should_not be_detect('hello, world!') }
end
