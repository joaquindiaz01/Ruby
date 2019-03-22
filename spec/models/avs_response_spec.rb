=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::AVSResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AVSResponse' do
  before do
    # run before each test
    @instance = OpenapiClient::AVSResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AVSResponse' do
    it 'should create an instance of AVSResponse' do
      expect(@instance).to be_instance_of(OpenapiClient::AVSResponse)
    end
  end
  describe 'test attribute "street_match"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Y", "N", "NO_INPUT_DATA", "NOT_CHECKED"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.street_match = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "postal_code_match"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Y", "N", "NO_INPUT_DATA", "NOT_CHECKED"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.postal_code_match = value }.not_to raise_error
      # end
    end
  end

end