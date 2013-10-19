require 'nori'

module Hundraartonhundra
  class Response
    def self.parse(body)
      parser = Nori.new(convert_tags_to: lambda { |tag| tag.snakecase.to_sym })
      parser.parse(body)
    end
  end
end
