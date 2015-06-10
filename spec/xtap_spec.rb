require 'spec_helper'
require_relative '../lib/xtap'

RSpec.describe Object do
  describe '#xtap' do
    subject(:object) { Object.new }

    it 'yields self to given block' do
      expect { |b| object.xtap(&b) }.to yield_with_args(object)
    end

    it 'returns value returned by calling given block' do
      actual = object.xtap { |o| o.nil? ? 'it was nil' : 'it was not nil' }
      expect(actual).to eq('it was not nil')
    end
  end
end
