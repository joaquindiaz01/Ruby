# OpenapiClient::PaymentApi

All URIs are relative to *https://cert.api.firstdata.com/gateway*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finalize_secure_transaction**](PaymentApi.md#finalize_secure_transaction) | **PATCH** /v1/payments/{transaction-id} | Update a 3DSecure or UnionPay payment and continue processing.
[**perform_payment_post_authorisation**](PaymentApi.md#perform_payment_post_authorisation) | **POST** /v1/payments/{transaction-id}/postauth | Capture/complete a transaction.
[**primary_payment_transaction**](PaymentApi.md#primary_payment_transaction) | **POST** /v1/payments | Generate a primary transaction.
[**return_transaction**](PaymentApi.md#return_transaction) | **POST** /v1/payments/{transaction-id}/return | Return/refund a transaction.
[**transaction_inquiry**](PaymentApi.md#transaction_inquiry) | **GET** /v1/payments/{transaction-id} | Retrieve the state of a transaction.
[**void_transaction**](PaymentApi.md#void_transaction) | **POST** /v1/payments/{transaction-id}/void | Reverse a previous action on an existing transaction.


# **finalize_secure_transaction**
> TransactionResponse finalize_secure_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, authentication_response_verification_request, opts)

Update a 3DSecure or UnionPay payment and continue processing.

Use this to handle a 3DSecure redirect response or UnionPay authentication, updating the transaction and continuing processing.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
transaction_id = 'transaction_id_example' # String | Gateway transaction identifier as returned in the parameter ipgTransactionId
authentication_response_verification_request = OpenapiClient::AuthenticationResponseVerificationRequest.new # AuthenticationResponseVerificationRequest | 
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | The region where client wants to process the transaction
}

begin
  #Update a 3DSecure or UnionPay payment and continue processing.
  result = api_instance.finalize_secure_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, authentication_response_verification_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->finalize_secure_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **transaction_id** | **String**| Gateway transaction identifier as returned in the parameter ipgTransactionId | 
 **authentication_response_verification_request** | [**AuthenticationResponseVerificationRequest**](AuthenticationResponseVerificationRequest.md)|  | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **perform_payment_post_authorisation**
> TransactionResponse perform_payment_post_authorisation(content_type, client_request_id, api_key, timestamp, transaction_id, secondary_transaction, opts)

Capture/complete a transaction.

Used to capture/complete an existing transaction. Partial postauths are allowed.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
transaction_id = 'transaction_id_example' # String | Gateway transaction identifier as returned in the parameter ipgTransactionId
secondary_transaction = OpenapiClient::SecondaryTransaction.new # SecondaryTransaction | 
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | The region where client wants to process the transaction
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app
}

begin
  #Capture/complete a transaction.
  result = api_instance.perform_payment_post_authorisation(content_type, client_request_id, api_key, timestamp, transaction_id, secondary_transaction, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->perform_payment_post_authorisation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **transaction_id** | **String**| Gateway transaction identifier as returned in the parameter ipgTransactionId | 
 **secondary_transaction** | [**SecondaryTransaction**](SecondaryTransaction.md)|  | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **primary_payment_transaction**
> TransactionResponse primary_payment_transaction(content_type, client_request_id, api_key, timestamp, primary_transaction, opts)

Generate a primary transaction.

Use this to originate a financial transaction, like a sale, preauthorization, or credit.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
primary_transaction = OpenapiClient::PrimaryTransaction.new # PrimaryTransaction | Primary Transaction request
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | The region where client wants to process the transaction
}

begin
  #Generate a primary transaction.
  result = api_instance.primary_payment_transaction(content_type, client_request_id, api_key, timestamp, primary_transaction, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->primary_payment_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **primary_transaction** | [**PrimaryTransaction**](PrimaryTransaction.md)| Primary Transaction request | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **return_transaction**
> TransactionResponse return_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, secondary_transaction, opts)

Return/refund a transaction.

Use this to return/refund an existing transaction.  Partial returns are allowed.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
transaction_id = 'transaction_id_example' # String | Gateway transaction identifier as returned in the parameter ipgTransactionId
secondary_transaction = OpenapiClient::SecondaryTransaction.new # SecondaryTransaction | 
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | The region where client wants to process the transaction
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app
}

begin
  #Return/refund a transaction.
  result = api_instance.return_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, secondary_transaction, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->return_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **transaction_id** | **String**| Gateway transaction identifier as returned in the parameter ipgTransactionId | 
 **secondary_transaction** | [**SecondaryTransaction**](SecondaryTransaction.md)|  | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **transaction_inquiry**
> TransactionResponse transaction_inquiry(content_type, client_request_id, api_key, timestamp, transaction_id, opts)

Retrieve the state of a transaction.

Use this query to get the current state of an existing transaction.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
transaction_id = 'transaction_id_example' # String | Gateway transaction identifier as returned in the parameter ipgTransactionId
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | The region where client wants to process the transaction
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app
}

begin
  #Retrieve the state of a transaction.
  result = api_instance.transaction_inquiry(content_type, client_request_id, api_key, timestamp, transaction_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->transaction_inquiry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **transaction_id** | **String**| Gateway transaction identifier as returned in the parameter ipgTransactionId | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **void_transaction**
> TransactionResponse void_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, opts)

Reverse a previous action on an existing transaction.

Use this to reverse a postauth/completion, credit, preauth, or sale.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
transaction_id = 'transaction_id_example' # String | Gateway transaction identifier as returned in the parameter ipgTransactionId
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | The region where client wants to process the transaction
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app
}

begin
  #Reverse a previous action on an existing transaction.
  result = api_instance.void_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->void_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **transaction_id** | **String**| Gateway transaction identifier as returned in the parameter ipgTransactionId | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



