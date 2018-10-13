require 'net/http'

module BetterdoctorHelper
 def self.get_doctors
    #url = URI.parse('https://api.betterdoctor.com/2016-03-01/doctors?location=az-phoenix&sort=best-match-desc&skip=0&limit=5&user_key=' + 'dca9378486')   
    url = URI.parse('https://api.betterdoctor.com/2016-03-01/doctors?location=az-phoenix&sort=best-match-desc&skip=0&limit=10&user_key=' + ENV['BD_API'])   

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