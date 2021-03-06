# OpenapiClient::FraudDetectApi

All URIs are relative to *https://cert.api.firstdata.com/gateway*

Method | HTTP request | Description
------------- | ------------- | -------------
[**score_only**](FraudDetectApi.md#score_only) | **POST** /v1/fraud/score-only | Score a transaction for fraud.


# **score_only**
> ScoreOnlyResponse score_only(content_type, client_request_id, api_key, timestamp, score_only_request, opts)

Score a transaction for fraud.

Use this to obtain a fraud score for a transaction.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::FraudDetectApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
score_only_request = OpenapiClient::ScoreOnlyRequest.new # ScoreOnlyRequest | 
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | The region where client wants to process the transaction
}

begin
  #Score a transaction for fraud.
  result = api_instance.score_only(content_type, client_request_id, api_key, timestamp, score_only_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling FraudDetectApi->score_only: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **score_only_request** | [**ScoreOnlyRequest**](ScoreOnlyRequest.md)|  | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 

### Return type

[**ScoreOnlyResponse**](ScoreOnlyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



