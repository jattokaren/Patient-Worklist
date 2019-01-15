require 'net/http'

module BetterdoctorHelper
 def self.get_doctors(encounter)
    #How do I pass 2 parameters / variables to the Request URL???
    latitude = encounter.latitude.to_s
    longitude = encounter.longitude.to_s

    #for Dev WORKING        
    #url2 = URI.parse('https://api.betterdoctor.com/2016-03-01/doctors?location=az-phoenix&sort=best-match-desc&skip=0&limit=5&user_key=' + 'dca937f38486')   
    #url1 = URI.parse('https://api.betterdoctor.com/2016-03-01/doctors?location=33.2765%2C%20-112.1872%2C%2010&sort=best-match-desc&skip=0&limit=5&user_key=' + 'dca93786')  
    #url = URI.parse('https://api.betterdoctor.com/2016-03-01/doctors?location=' + latitude +'%2C%20' + longitude + '%2C%2010&sort=best-match-desc&skip=0&limit=5&user_key=' + 'dca93786') 
    #for Production WORKING
    url = URI.parse('https://api.betterdoctor.com/2016-03-01/doctors?location=' + latitude +'%2C%20' + longitude + '%2C%2010&sort=best-match-desc&skip=0&limit=5&user_key=' + ENV['BD_API'])   

    req = Net::HTTP::Get.new(url.to_s)
    req['Accept'] = 'application/json'
    #req.add_field('Authorization', 'SHAREDKEY 1197:n1ndBzCNh+hW7kbVueswEsCGNiDd1yS6U4MKk3kOe14=')
    res = Net::HTTP.new(url.host, url.port)
    res.use_ssl = true
    res.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = res.request(req)
    response.body
  end
end