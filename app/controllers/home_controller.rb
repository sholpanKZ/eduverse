class HomeController < ApplicationController
  def index
    require 'net/http'

url =  URI.parse('https://tenor.googleapis.com/v2/search?q=excited&key=AIzaSyAixkfivBOP0SRhjMe2QjtX7qhLe-cALqk&client_key=my_test_app&limit=8')
req = Net::HTTP::Get.new url
res = Net::HTTP.start(url.host, url.port,
        :use_ssl => url.scheme == 'https') {|http| http.request req}

    @gifs = JSON.parse(res.body) #hash

  end
end
