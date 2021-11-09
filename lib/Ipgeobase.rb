# frozen_string_literal: true

require_relative "Ipgeobase/version"
require "addressable/uri"
require "net/http"
require "happymapper"


# module get metadata by IP address
module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip}")
    response = Net::HTTP.get(uri)
    #puts response
    HappyMapper.parse(response)
  end
end


# meta = Ipgeobase.lookup('217.147.165.12')
# p meta.methods
# p meta.city
# p meta.country_code
# p meta.lat
# p meta.lon

