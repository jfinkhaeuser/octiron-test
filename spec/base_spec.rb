require_relative 'spec_helper'
require_relative '../lib/octiron-test/base.rb'

describe Octiron::EventDefinitions::Test::Base do
  it "responds to :options" do
    tester = Octiron::EventDefinitions::Test::Base.new
    expect(tester.respond_to?(:options)).to be_truthy
  end

  it "has no options by default" do
    tester = Octiron::EventDefinitions::Test::Base.new
    expect(tester.options).to be_nil
  end

  it "copies options if some are passed" do
    tester = Octiron::EventDefinitions::Test::Base.new(foo: :bar)
    expect(tester.options).not_to be_nil
    expect(tester.options[:foo]).to eql :bar
  end
end
