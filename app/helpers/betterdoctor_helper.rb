require 'net/http'

module BetterdoctorHelper
 def get_doctors
    url = URI.parse('https://api.betterdoctor.com/2016-03-01/doctors?location=az-phoenix&sort=rating-desc&skip=0&limit=10&user_key=dca937ff19656d3030714121b5e38486')   
    req = Net::HTTP::Get.new(url.to_s)
    req['Accept'] = 'application/json'
    req.add_field('Authorization', 'SHAREDKEY 1197:n1ndBzCNh+hW7kbVueswEsCGNiDd1yS6U4MKk3kOe14=')
    res = Net::HTTP.new(url.host, url.port)
    res.use_ssl = true
    res.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = res.request(req)
    response.body
  end
end