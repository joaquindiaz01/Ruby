=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class TransactionType
    
    SALE = 'SALE'.freeze
    PREAUTH = 'PREAUTH'.freeze
    CREDIT = 'CREDIT'.freeze
    FORCED_TICKET = 'FORCED_TICKET'.freeze
    VOID = 'VOID'.freeze
    RETURN = 'RETURN'.freeze
    POSTAUTH = 'POSTAUTH'.freeze
    PAYER_AUTH = 'PAYER_AUTH'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TransactionType.constants.select { |c| TransactionType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #TransactionType" if constantValues.empty?
      value
    end
  end
end
