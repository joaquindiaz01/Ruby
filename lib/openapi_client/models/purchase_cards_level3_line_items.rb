=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class PurchaseCardsLevel3LineItems
    # The commodity code used to classify the item purchased, positive numeric
    attr_accessor :commodity_code

    # Merchant product identifier/The Universal Product Code (UPC) of the item purchased
    attr_accessor :product_code

    # The description
    attr_accessor :description

    # The quantity
    attr_accessor :quantity

    # The unit of measure
    attr_accessor :unit_measure

    # Rate amount in 3 decimal 12 bytes total digit
    attr_accessor :unit_price

    attr_accessor :vat_amont_and_rate

    attr_accessor :discount_amount_and_rate

    # Rate amount in 3 decimal 12 bytes total digit
    attr_accessor :line_item_total

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'commodity_code' => :'commodityCode',
        :'product_code' => :'productCode',
        :'description' => :'description',
        :'quantity' => :'quantity',
        :'unit_measure' => :'unitMeasure',
        :'unit_price' => :'unitPrice',
        :'vat_amont_and_rate' => :'vatAmontAndRate',
        :'discount_amount_and_rate' => :'discountAmountAndRate',
        :'line_item_total' => :'lineItemTotal'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'commodity_code' => :'String',
        :'product_code' => :'String',
        :'description' => :'String',
        :'quantity' => :'Integer',
        :'unit_measure' => :'String',
        :'unit_price' => :'Float',
        :'vat_amont_and_rate' => :'AdditionalAmountRate',
        :'discount_amount_and_rate' => :'AdditionalAmountRate',
        :'line_item_total' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'commodityCode')
        self.commodity_code = attributes[:'commodityCode']
      end

      if attributes.has_key?(:'productCode')
        self.product_code = attributes[:'productCode']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'unitMeasure')
        self.unit_measure = attributes[:'unitMeasure']
      end

      if attributes.has_key?(:'unitPrice')
        self.unit_price = attributes[:'unitPrice']
      end

      if attributes.has_key?(:'vatAmontAndRate')
        self.vat_amont_and_rate = attributes[:'vatAmontAndRate']
      end

      if attributes.has_key?(:'discountAmountAndRate')
        self.discount_amount_and_rate = attributes[:'discountAmountAndRate']
      end

      if attributes.has_key?(:'lineItemTotal')
        self.line_item_total = attributes[:'lineItemTotal']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@commodity_code.nil? && @commodity_code.to_s.length > 4
        invalid_properties.push('invalid value for "commodity_code", the character length must be smaller than or equal to 4.')
      end

      if !@product_code.nil? && @product_code.to_s.length > 20
        invalid_properties.push('invalid value for "product_code", the character length must be smaller than or equal to 20.')
      end

      if !@description.nil? && @description.to_s.length > 30
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 30.')
      end

      if !@quantity.nil? && @quantity < 1
        invalid_properties.push('invalid value for "quantity", must be greater than or equal to 1.')
      end

      if !@unit_measure.nil? && @unit_measure.to_s.length > 3
        invalid_properties.push('invalid value for "unit_measure", the character length must be smaller than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@commodity_code.nil? && @commodity_code.to_s.length > 4
      return false if !@product_code.nil? && @product_code.to_s.length > 20
      return false if !@description.nil? && @description.to_s.length > 30
      return false if !@quantity.nil? && @quantity < 1
      return false if !@unit_measure.nil? && @unit_measure.to_s.length > 3
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] commodity_code Value to be assigned
    def commodity_code=(commodity_code)
      if !commodity_code.nil? && commodity_code.to_s.length > 4
        fail ArgumentError, 'invalid value for "commodity_code", the character length must be smaller than or equal to 4.'
      end

      @commodity_code = commodity_code
    end

    # Custom attribute writer method with validation
    # @param [Object] product_code Value to be assigned
    def product_code=(product_code)
      if !product_code.nil? && product_code.to_s.length > 20
        fail ArgumentError, 'invalid value for "product_code", the character length must be smaller than or equal to 20.'
      end

      @product_code = product_code
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 30
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 30.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if !quantity.nil? && quantity < 1
        fail ArgumentError, 'invalid value for "quantity", must be greater than or equal to 1.'
      end

      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_measure Value to be assigned
    def unit_measure=(unit_measure)
      if !unit_measure.nil? && unit_measure.to_s.length > 3
        fail ArgumentError, 'invalid value for "unit_measure", the character length must be smaller than or equal to 3.'
      end

      @unit_measure = unit_measure
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          commodity_code == o.commodity_code &&
          product_code == o.product_code &&
          description == o.description &&
          quantity == o.quantity &&
          unit_measure == o.unit_measure &&
          unit_price == o.unit_price &&
          vat_amont_and_rate == o.vat_amont_and_rate &&
          discount_amount_and_rate == o.discount_amount_and_rate &&
          line_item_total == o.line_item_total
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [commodity_code, product_code, description, quantity, unit_measure, unit_price, vat_amont_and_rate, discount_amount_and_rate, line_item_total].hash
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