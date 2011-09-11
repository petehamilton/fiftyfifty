require 'httparty'

class FiftyFifty
  include HTTParty
  
  debug_output $stdout
  
  def initialize(api_key)
     @api_key = api_key
     self.class.base_uri "5050.gd/api/#{@api_key}"
  end
  
  def statistics
    return self.class.get("/statistics")
  end
end