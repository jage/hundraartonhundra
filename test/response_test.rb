require 'minitest/autorun'
require_relative '../lib/hundraartonhundra/response'

class ResponseTest < MiniTest::Unit::TestCase
  def setup
    @body = File.read('test/fixtures/087864000.xml')
  end

  def test_response
    assert_instance_of Hashie::Mash, Hundraartonhundra::Response.parse(@body)
  end
end

