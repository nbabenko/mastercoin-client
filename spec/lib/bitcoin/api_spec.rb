require 'spec_helper'

describe Bitcoin::API do
  subject { Bitcoin::API.new(:user => $user, :pass => $pass) }
  
  it "should have default host, port, ssl and timeouts" do
    subject.host.should == 'localhost'
    subject.port.should == 8332
    subject.open_timeout.should == 1
    subject.read_timeout.should == 1
    subject.ssl?.should be_false
  end
  
  it "should accept host, port, ssl options" do
    req = Bitcoin::API.new(
        :user => $user,
        :pass => $pass,
        :host => 'example.com',
        :port => 1234,
        :ssl => true,
        :open_timeout => 5,
        :read_timeout => 2
    )
    req.host.should == 'example.com'
    req.port.should == 1234
    req.open_timeout.should == 5
    req.read_timeout.should == 2
    req.ssl?.should be_true
  end
  
  it "should build an options hash" do
    subject.to_hash.should == {
      :user => $user,
      :pass => $pass,
      :host => 'localhost',
      :port => 8332,
      :ssl => false,
      :open_timeout => 1,
      :read_timeout => 1,
    }
  end
end
