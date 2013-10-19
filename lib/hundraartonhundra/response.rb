require 'nori'
require 'hashie/mash'

module Hundraartonhundra
  class Response
    def self.parse(body)
      parser = Nori.new(convert_tags_to: lambda { |tag| tag.snakecase.to_sym })
      hash = parser.parse(body)
      Hashie::Mash.new(hash)
    end
  end
end
