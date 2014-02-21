require 'rspec'
require './mock.rb'

describe A do
  it "hoge" do
    A.should_receive(:a).once
    A.a
  end
  it "fail" do
    # fail
    A.should_receive(:a).once
    A.should_receive(:b).once
    A.should_receive(:c).once
    A.c
  end
  it "success a" do
    # success
    A.should_receive(:a).once
    A.c
  end
  it "success b" do
    # success
    A.should_receive(:b).once
    A.c
  end
  it "success c" do
    # success
    A.should_receive(:c).once
    A.c
  end
end
