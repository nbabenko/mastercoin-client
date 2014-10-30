module Mastercoin
  autoload :Client, 'mastercoin/client'
  autoload :Version,'mastercoin/version'
  autoload :VERSION,'mastercoin/version'
#  autoload :DSL,    'bitcoin/dsl'
  
  # def self.included(base)
  #   base.send(:include, Bitcoin::DSL)
  #   base.send(:extend,  Bitcoin::DSL)
  # end
end

def Mastercoin(user, pass, options = {})
  ::Mastercoin::Client.new(user, pass, options)
end
