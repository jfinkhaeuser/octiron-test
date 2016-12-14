require_relative 'spec_helper'
require_relative '../lib/octiron-test/success.rb'

describe Octiron::EventDefinitions::Test::Success do
  [:context, :description, :description_type].each do |attr|
    it "sets :#{attr} if given" do
      attr_value = {}
      tester = Octiron::EventDefinitions::Test::Success.new(attr => attr_value)
      expect(tester.send(attr)).not_to be_nil
      expect(tester.send(attr)).to eql attr_value
      expect(tester.send(attr).object_id).to eql attr_value.object_id
    end
  end
end
