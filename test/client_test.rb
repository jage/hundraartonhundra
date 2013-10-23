require 'minitest/autorun'
require 'hundraartonhundra/client'

class ClientTest < MiniTest::Unit::TestCase
  def test_api_key_requirement
    assert_raises(RuntimeError, "Missing 18100 API key") do
      Hundraartonhundra::Client.new
    end
  end
end

