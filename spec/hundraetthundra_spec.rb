require 'minitest/autorun'
require_relative '../lib/hundraartonhundra'

describe Hundraartonhundra, '118100' do
  describe Hundraartonhundra::Client do

    describe '#new' do
      describe 'without API key' do
        it 'should raise exception' do
          proc { Hundraartonhundra::Client.new }.must_raise RuntimeError, "Missing 118100 API key"
        end
      end
    end

    describe '#query' do
      before do
        @client = Hundraartonhundra::Client.new('key')
      end

      it 'should return result' do
      end

      it 'should require a query' do
        proc { @client.query }.must_raise ArgumentError
      end
    end
  end
end
