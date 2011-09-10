require 'httparty'

# class Representative
#   include HTTParty
#   base_uri 'whoismyrepresentative.com'
#   default_params :output => 'json'
#   format :json
# 
#   def self.find_by_zip(zip)
#     get('/whoismyrep.php', :query => {:zip => zip})
#   end
# 
#   def self.get_all_by_name(last_name)
#     get('/getall_reps_byname.php', :query => {:lastname => last_name})
#   end
# end

class FiftyFifty
  base_uri "5050.gd/api/#{@api_key}/"

  def initialize(api_key)
     @api_key = api_key
  end

  def statistics
    puts base_uri
    return self.class.get("/statistics")
  end
end