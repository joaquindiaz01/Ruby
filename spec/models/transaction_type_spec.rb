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

# Unit tests for SwaggerClient::TransactionType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransactionType' do
  before do
    # run before each test
    @instance = SwaggerClient::TransactionType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionType' do
    it 'should create an instance of TransactionType' do
      expect(@instance).to be_instance_of(SwaggerClient::TransactionType)
    end
  end
end

