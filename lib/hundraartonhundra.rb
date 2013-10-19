require 'uri'
require 'net/http'
require 'nokogiri'

module Hundraartonhundra

  BASE_URL = 'http://developer.118100.se:8080/openapi-1.1/appetizing'

  class Client
    def initialize(key = nil)
      @api_key = key || ENV['HUNDRAARTONHUNDRA_KEY']
      raise "Missing 18100 API key" unless @api_key
    end

    def query(pattern)
      params = URI.encode_www_form(query: pattern, key: @api_key)
      url = URI.parse("#{BASE_URL}?#{params}")
      response = Net::HTTP.get_response(url).body
      Result.new(response)
    end
  end

  class Result
    def initialize(response)
      @body = response
    end

    def name
      xml = Nokogiri::XML(@body)
      xml.xpath('//individual/name').map(&:content)
    end
  end
end
