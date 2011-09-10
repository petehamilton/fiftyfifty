require 'httparty'

class FiftyFifty
  include HTTParty
  base_uri "5050.gd/api/#{@api_key}/"
  
  def initialize(api_key)
     @api_key = api_key
  end
  
  def statistics
    return self.class.get("/statistics")
  end
end