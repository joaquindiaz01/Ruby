=begin
#Payment Gateway API Specification

#Payment Gateway API for payment processing. 

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::StoredCredential
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StoredCredential' do
  before do
    # run before each test
    @instance = SwaggerClient::StoredCredential.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoredCredential' do
    it 'should create an instance of StoredCredential' do
      expect(@instance).to be_instance_of(SwaggerClient::StoredCredential)
    end
  end
  describe 'test attribute "sequence"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FIRST", "SUBSEQUENT"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.sequence = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "scheduled"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "referenced_scheme_transaction_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "initiator"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["MERCHANT", "CARDHOLDER"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.initiator = value }.not_to raise_error
       #end
    end
  end

end

