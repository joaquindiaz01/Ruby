=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class ExchangeRateRequest
    # Type of exchange rate inquiry. Valid values are 'DCC' and 'DYNAMIC_PRICING'.
    attr_accessor :type

    # An optional Outlet ID for clients that support multiple stores in the same app.
    attr_accessor :store_id

    # A bank identification number (BIN) of the card to be used for DCC.
    attr_accessor :bin

    # The original amount of the merchant currency for calculation.
    attr_accessor :base_amount

    # The currency code to convert for Dynamic Pricing.
    attr_accessor :foreign_currency

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'store_id' => :'storeId',
        :'bin' => :'bin',
        :'base_amount' => :'baseAmount',
        :'foreign_currency' => :'foreignCurrency'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'store_id' => :'String',
        :'bin' => :'String',
        :'base_amount' => :'Float',
        :'foreign_currency' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'storeId')
        self.store_id = attributes[:'storeId']
      end

      if attributes.has_key?(:'bin')
        self.bin = attributes[:'bin']
      end

      if attributes.has_key?(:'baseAmount')
        self.base_amount = attributes[:'baseAmount']
      end

      if attributes.has_key?(:'foreignCurrency')
        self.foreign_currency = attributes[:'foreignCurrency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if !@store_id.nil? && @store_id.to_s.length > 20
        invalid_properties.push('invalid value for "store_id", the character length must be smaller than or equal to 20.')
      end

      if !@bin.nil? && @bin.to_s.length > 6
        invalid_properties.push('invalid value for "bin", the character length must be smaller than or equal to 6.')
      end

      if !@bin.nil? && @bin !~ Regexp.new(/[0-9]{6}/)
        invalid_properties.push('invalid value for "bin", must conform to the pattern /[0-9]{6}/.')
      end

      if @base_amount.nil?
        invalid_properties.push('invalid value for "base_amount", base_amount cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['DCC', 'DYNAMIC_PRICING'])
      return false unless type_validator.valid?(@type)
      return false if !@store_id.nil? && @store_id.to_s.length > 20
      return false if !@bin.nil? && @bin.to_s.length > 6
      return false if !@bin.nil? && @bin !~ Regexp.new(/[0-9]{6}/)
      return false if @base_amount.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['DCC', 'DYNAMIC_PRICING'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] store_id Value to be assigned
    def store_id=(store_id)
      if !store_id.nil? && store_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "store_id", the character length must be smaller than or equal to 20.'
      end

      @store_id = store_id
    end

    # Custom attribute writer method with validation
    # @param [Object] bin Value to be assigned
    def bin=(bin)
      if !bin.nil? && bin.to_s.length > 6
        fail ArgumentError, 'invalid value for "bin", the character length must be smaller than or equal to 6.'
      end

      if !bin.nil? && bin !~ Regexp.new(/[0-9]{6}/)
        fail ArgumentError, 'invalid value for "bin", must conform to the pattern /[0-9]{6}/.'
      end

      @bin = bin
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          store_id == o.store_id &&
          bin == o.bin &&
          base_amount == o.base_amount &&
          foreign_currency == o.foreign_currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, store_id, bin, base_amount, foreign_currency].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = OpenapiClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
