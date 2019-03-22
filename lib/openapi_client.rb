=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/avs_response'
require 'openapi_client/models/access_token_response'
require 'openapi_client/models/additional_amount_rate'
require 'openapi_client/models/additional_transaction_details'
require 'openapi_client/models/address'
require 'openapi_client/models/airline'
require 'openapi_client/models/airline_ancillary_service_category'
require 'openapi_client/models/airline_travel_route'
require 'openapi_client/models/ali_pay'
require 'openapi_client/models/amount'
require 'openapi_client/models/amount_components'
require 'openapi_client/models/authentication_request'
require 'openapi_client/models/authentication_response_verification'
require 'openapi_client/models/authentication_response_verification_request'
require 'openapi_client/models/basic_response'
require 'openapi_client/models/basket_item'
require 'openapi_client/models/billing'
require 'openapi_client/models/billing_address'
require 'openapi_client/models/billing_address_phone'
require 'openapi_client/models/car_rental'
require 'openapi_client/models/car_rental_extra_charges'
require 'openapi_client/models/card'
require 'openapi_client/models/card_info'
require 'openapi_client/models/card_info_lookup_request'
require 'openapi_client/models/card_info_lookup_response'
require 'openapi_client/models/card_verification_request'
require 'openapi_client/models/card_verifications_transaction'
require 'openapi_client/models/china_domestic'
require 'openapi_client/models/client_locale'
require 'openapi_client/models/contact'
require 'openapi_client/models/customer'
require 'openapi_client/models/customer_address'
require 'openapi_client/models/customer_address_phone'
require 'openapi_client/models/dcc'
require 'openapi_client/models/device'
require 'openapi_client/models/device_networks'
require 'openapi_client/models/document'
require 'openapi_client/models/error'
require 'openapi_client/models/error_details'
require 'openapi_client/models/error_response'
require 'openapi_client/models/exchange_rate_request'
require 'openapi_client/models/exchange_rate_response'
require 'openapi_client/models/expiration'
require 'openapi_client/models/fraud_order'
require 'openapi_client/models/fraud_order_items'
require 'openapi_client/models/fraud_order_ship_to_address'
require 'openapi_client/models/frequency'
require 'openapi_client/models/industry_specific_extensions'
require 'openapi_client/models/installment_options'
require 'openapi_client/models/lodging'
require 'openapi_client/models/lodging_extra_charges'
require 'openapi_client/models/loyalty'
require 'openapi_client/models/merchant'
require 'openapi_client/models/merchant_location'
require 'openapi_client/models/merchant_location_merchant_address'
require 'openapi_client/models/order'
require 'openapi_client/models/order_error_response'
require 'openapi_client/models/order_response'
require 'openapi_client/models/pay_pal'
require 'openapi_client/models/payment'
require 'openapi_client/models/payment_card'
require 'openapi_client/models/payment_card_authentication_result'
require 'openapi_client/models/payment_facilitator'
require 'openapi_client/models/payment_issuer_response'
require 'openapi_client/models/payment_method'
require 'openapi_client/models/payment_pay_method'
require 'openapi_client/models/payment_schedules_error_response'
require 'openapi_client/models/payment_schedules_request'
require 'openapi_client/models/payment_schedules_response'
require 'openapi_client/models/payment_tokenization'
require 'openapi_client/models/payment_tokenization_error_response'
require 'openapi_client/models/payment_tokenization_request'
require 'openapi_client/models/payment_tokenization_response'
require 'openapi_client/models/payment_url_error_response'
require 'openapi_client/models/payment_url_request'
require 'openapi_client/models/payment_url_response'
require 'openapi_client/models/payment_verification3ds'
require 'openapi_client/models/payment_verification_avs'
require 'openapi_client/models/payment_verification_cvv'
require 'openapi_client/models/primary_transaction'
require 'openapi_client/models/primary_transaction_additional_details'
require 'openapi_client/models/processor_data'
require 'openapi_client/models/purchase_cards'
require 'openapi_client/models/purchase_cards_level2'
require 'openapi_client/models/purchase_cards_level3'
require 'openapi_client/models/purchase_cards_level3_line_items'
require 'openapi_client/models/recurring_payment_details'
require 'openapi_client/models/recurring_payment_details_response'
require 'openapi_client/models/referenced_order'
require 'openapi_client/models/response_type'
require 'openapi_client/models/score_only_request'
require 'openapi_client/models/score_only_response'
require 'openapi_client/models/score_only_response_fraud_score'
require 'openapi_client/models/score_only_response_fraud_score_explanations'
require 'openapi_client/models/secondary_transaction'
require 'openapi_client/models/secondary_transaction_additional_details'
require 'openapi_client/models/secure3d_response'
require 'openapi_client/models/sepa'
require 'openapi_client/models/sepa_mandate'
require 'openapi_client/models/shipping'
require 'openapi_client/models/soft_descriptor'
require 'openapi_client/models/split_shipment'
require 'openapi_client/models/stored_credential'
require 'openapi_client/models/sub_merchant_data'
require 'openapi_client/models/transaction'
require 'openapi_client/models/transaction_error_response'
require 'openapi_client/models/transaction_origin'
require 'openapi_client/models/transaction_response'
require 'openapi_client/models/transaction_type'

# APIs
require 'openapi_client/api/authentication_api'
require 'openapi_client/api/card_info_lookup_api'
require 'openapi_client/api/card_verification_api'
require 'openapi_client/api/currency_conversion_api'
require 'openapi_client/api/fraud_detect_api'
require 'openapi_client/api/order_api'
require 'openapi_client/api/payment_api'
require 'openapi_client/api/payment_schedules_api'
require 'openapi_client/api/payment_token_api'
require 'openapi_client/api/payment_url_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end