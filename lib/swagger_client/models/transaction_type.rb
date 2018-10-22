=begin
#Payment Gateway API Specification

#Payment Gateway API for payment processing. 

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module SwaggerClient
  class TransactionType
    
    SALE = "SALE".freeze
    PREAUTH = "PREAUTH".freeze
    CREDIT = "CREDIT".freeze
    FORCED_TICKET = "FORCED_TICKET".freeze
    VOID = "VOID".freeze
    RETURN = "RETURN".freeze
    POSTAUTH = "POSTAUTH".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TransactionType.constants.select{|c| TransactionType::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #TransactionType" if constantValues.empty?
      value
    end
  end

end
