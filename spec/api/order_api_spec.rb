=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::OrderApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrderApi' do
  before do
    # run before each test
    @instance = OpenapiClient::OrderApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderApi' do
    it 'should create an instance of OrderApi' do
      expect(@instance).to be_instance_of(OpenapiClient::OrderApi)
    end
  end

  # unit tests for order_inquiry
  # Retrieve the state of an order
  # Use this query to get the current state of an existing order.
  # @param content_type content type
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key 
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param order_id Gateway order identifier as returned in the parameter orderId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region The region where client wants to process the transaction
  # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app
  # @return [OrderResponse]
  describe 'order_inquiry test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_post_auth
  # Capture/complete an already existing order.
  # Use this to capture/complete an order. Postauths and partial postauths are allowed.
  # @param content_type content type
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key 
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param order_id Gateway order identifier as returned in the parameter orderId
  # @param secondary_transaction 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region The region where client wants to process the transaction
  # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app
  # @return [TransactionResponse]
  describe 'order_post_auth test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_return_transaction
  # Return/refund an order.
  # Use this for Returns of an existing order. Partial Returns are allowed.
  # @param content_type content type
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key 
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param order_id Gateway order identifier as returned in the parameter orderId
  # @param secondary_transaction 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region The region where client wants to process the transaction
  # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app
  # @return [TransactionResponse]
  describe 'order_return_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
