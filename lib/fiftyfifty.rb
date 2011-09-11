require 'httparty'
require 'hashie'

class FiftyFifty
  include HTTParty
  
  class BadRequest < StandardError; end
  
  format :json

  def initialize(api_key)
     @api_key = api_key
     self.class.base_uri "5050.gd/api/#{@api_key}"
  end
  
  def statistics
    return get("/statistics")
  end
  
  def get(url)
    response = Hashie::Mash.new(self.class.get(url))

    if response.status == 400
      raise BadRequest
    else
      return response.data
    end
  end
  
  def put
    
  end
  
  def post
  
  end
end