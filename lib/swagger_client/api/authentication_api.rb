=begin
#Payment Gateway API Specification

#Payment Gateway API for payment processing. 

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwaggerClient
  class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Generate an access token for user authentication
    # This is the access token generation call for authorizing subsequent financial transactions. A valid access token is required for web client requests. 
    # @param content_type content type
    # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key 
    # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @param [Hash] opts the optional parameters
    # @return [AccessTokenResponse]
    def v1_authentication_access_tokens_post(content_type, client_request_id, api_key, timestamp, message_signature, opts = {})
      data, _status_code, _headers = v1_authentication_access_tokens_post_with_http_info(content_type, client_request_id, api_key, timestamp, message_signature, opts)
      return data
    end

    # Generate an access token for user authentication
    # This is the access token generation call for authorizing subsequent financial transactions. A valid access token is required for web client requests. 
    # @param content_type content type
    # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key 
    # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccessTokenResponse, Fixnum, Hash)>] AccessTokenResponse data, response status code and response headers
    def v1_authentication_access_tokens_post_with_http_info(content_type, client_request_id, api_key, timestamp, message_signature, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthenticationApi.v1_authentication_access_tokens_post ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling AuthenticationApi.v1_authentication_access_tokens_post"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['application/json'].include?(content_type)
        fail ArgumentError, "invalid value for 'content_type', must be one of application/json"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling AuthenticationApi.v1_authentication_access_tokens_post"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling AuthenticationApi.v1_authentication_access_tokens_post"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling AuthenticationApi.v1_authentication_access_tokens_post"
      end
      # verify the required parameter 'message_signature' is set
      if @api_client.config.client_side_validation && message_signature.nil?
        fail ArgumentError, "Missing the required parameter 'message_signature' when calling AuthenticationApi.v1_authentication_access_tokens_post"
      end
      # resource path
      local_var_path = "/v1/authentication/access-tokens"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      # header_params[:'Content-Type'] = content_type
      header_params[:'Client-Request-Id'] = client_request_id
      header_params[:'Api-Key'] = api_key
      header_params[:'Timestamp'] = timestamp
      header_params[:'Message-Signature'] = message_signature

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccessTokenResponse',
        :error_type => 'ErrorResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#v1_authentication_access_tokens_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
