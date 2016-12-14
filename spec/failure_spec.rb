require_relative 'spec_helper'
require_relative '../lib/octiron-test/failure.rb'

describe Octiron::EventDefinitions::Test::Error do
  [:context, :description, :description_type, :exception, :message].each do |attr|
    it "sets :#{attr} if given" do
      attr_value = {}
      # Testing the alias automatically tests the definition itself
      tester = Octiron::EventDefinitions::Test::Error.new(attr => attr_value)
      expect(tester.send(attr)).not_to be_nil
      expect(tester.send(attr)).to eql attr_value
      expect(tester.send(attr).object_id).to eql attr_value.object_id
    end
  end
end
