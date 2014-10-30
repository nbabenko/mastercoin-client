require 'spec_helper'
require 'bitcoin-client'

describe Mastercoin do
  before :each do
    FakeWeb.register_uri(:post, "http://user:pass@localhost:8332", :response => fixture('getbalance'))
    #FakeWeb.register_uri(:post, "http://mastercoin:masterw0rk@sandbox.noveltylab.com:12333", :response => fixture('getbalance'))
  end
  
  it "as a function" do
    cli = Mastercoin($user, $pass)
    cli.balance.should == 0.001
  end
  
  it "DSL, included" do
    class << self
      include Bitcoin
    end
    
    username $user
    password $pass
    
    balance.should == 0.001
  end
  
  it "DSL, extended" do
    class << self
      include Bitcoin
      
      username $user
      password $pass
      
      balance.should == 0.001
    end
  end
end
