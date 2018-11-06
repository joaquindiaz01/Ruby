=begin
#Payment Gateway API Specification

#Payment Gateway API for payment processing. 

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::OrderApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderApi' do
  before do
    # run before each test
    @instance = SwaggerClient::OrderApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderApi' do
    it 'should create an instance of OrderApi' do
      expect(@instance).to be_instance_of(SwaggerClient::OrderApi)
    end
  end

  # unit tests for perform_payment_post_authorisation
  # Use this to capture/complete a transaction. Partial postauths are allowed.
  # This can be used for postauth and partial postauths.
  # @param content_type content type
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key 
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param order_id Gateway order identifier as returned in the parameter orderId
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :store_id an optional outlet id for clients that support multiple store in the same developer app
  # @return [TransactionResponse]
  describe 'perform_payment_post_authorisation test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for return_transaction
  # Use this to return/refund on the order. Partial returns are allowed.
  # This can be used for Returns and Partial Returns.
  # @param content_type content type
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key 
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param order_id Gateway order identifier as returned in the parameter orderId
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :store_id an optional outlet id for clients that support multiple store in the same developer app
  # @return [TransactionResponse]
  describe 'return_transaction test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
