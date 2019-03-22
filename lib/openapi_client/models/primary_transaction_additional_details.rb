=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class PrimaryTransactionAdditionalDetails
    # For FORCED_TICKET only. Stores the six digit reference number you have received as the result of a successful external authorization (e.g. by phone). The Gateway needs this number for uniquely mapping a ForcedTicket transaction to a previously performed external authorization.] 
    attr_accessor :reference_number

    # Comments for the payment
    attr_accessor :comments

    # The name of sub-merchant for the payment facilitator
    attr_accessor :dynamic_merchant_name

    # Invoice number
    attr_accessor :invoice_number

    # Purchase order number
    attr_accessor :purchase_order_number

    # Valid values are 'FIRST', 'REPEAT' and 'STANDING_INSTRUCTION'.
    attr_accessor :recurring_type

    attr_accessor :installment_options

    # Use this field to override merchant configured MCC value
    attr_accessor :mcc

    attr_accessor :dcc

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'reference_number' => :'referenceNumber',
        :'comments' => :'comments',
        :'dynamic_merchant_name' => :'dynamicMerchantName',
        :'invoice_number' => :'invoiceNumber',
        :'purchase_order_number' => :'purchaseOrderNumber',
        :'recurring_type' => :'recurringType',
        :'installment_options' => :'installmentOptions',
        :'mcc' => :'mcc',
        :'dcc' => :'dcc'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'reference_number' => :'String',
        :'comments' => :'String',
        :'dynamic_merchant_name' => :'String',
        :'invoice_number' => :'String',
        :'purchase_order_number' => :'String',
        :'recurring_type' => :'String',
        :'installment_options' => :'InstallmentOptions',
        :'mcc' => :'String',
        :'dcc' => :'Dcc'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'referenceNumber')
        self.reference_number = attributes[:'referenceNumber']
      end

      if attributes.has_key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.has_key?(:'dynamicMerchantName')
        self.dynamic_merchant_name = attributes[:'dynamicMerchantName']
      end

      if attributes.has_key?(:'invoiceNumber')
        self.invoice_number = attributes[:'invoiceNumber']
      end

      if attributes.has_key?(:'purchaseOrderNumber')
        self.purchase_order_number = attributes[:'purchaseOrderNumber']
      end

      if attributes.has_key?(:'recurringType')
        self.recurring_type = attributes[:'recurringType']
      end

      if attributes.has_key?(:'installmentOptions')
        self.installment_options = attributes[:'installmentOptions']
      end

      if attributes.has_key?(:'mcc')
        self.mcc = attributes[:'mcc']
      end

      if attributes.has_key?(:'dcc')
        self.dcc = attributes[:'dcc']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@reference_number.nil? && @reference_number.to_s.length > 8
        invalid_properties.push('invalid value for "reference_number", the character length must be smaller than or equal to 8.')
      end

      if !@comments.nil? && @comments.to_s.length > 1024
        invalid_properties.push('invalid value for "comments", the character length must be smaller than or equal to 1024.')
      end

      if !@dynamic_merchant_name.nil? && @dynamic_merchant_name.to_s.length > 100
        invalid_properties.push('invalid value for "dynamic_merchant_name", the character length must be smaller than or equal to 100.')
      end

      if !@invoice_number.nil? && @invoice_number.to_s.length > 48
        invalid_properties.push('invalid value for "invoice_number", the character length must be smaller than or equal to 48.')
      end

      if !@purchase_order_number.nil? && @purchase_order_number.to_s.length > 128
        invalid_properties.push('invalid value for "purchase_order_number", the character length must be smaller than or equal to 128.')
      end

      if !@mcc.nil? && @mcc.to_s.length > 4
        invalid_properties.push('invalid value for "mcc", the character length must be smaller than or equal to 4.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@reference_number.nil? && @reference_number.to_s.length > 8
      return false if !@comments.nil? && @comments.to_s.length > 1024
      return false if !@dynamic_merchant_name.nil? && @dynamic_merchant_name.to_s.length > 100
      return false if !@invoice_number.nil? && @invoice_number.to_s.length > 48
      return false if !@purchase_order_number.nil? && @purchase_order_number.to_s.length > 128
      return false if !@mcc.nil? && @mcc.to_s.length > 4
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_number Value to be assigned
    def reference_number=(reference_number)
      if !reference_number.nil? && reference_number.to_s.length > 8
        fail ArgumentError, 'invalid value for "reference_number", the character length must be smaller than or equal to 8.'
      end

      @reference_number = reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] comments Value to be assigned
    def comments=(comments)
      if !comments.nil? && comments.to_s.length > 1024
        fail ArgumentError, 'invalid value for "comments", the character length must be smaller than or equal to 1024.'
      end

      @comments = comments
    end

    # Custom attribute writer method with validation
    # @param [Object] dynamic_merchant_name Value to be assigned
    def dynamic_merchant_name=(dynamic_merchant_name)
      if !dynamic_merchant_name.nil? && dynamic_merchant_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "dynamic_merchant_name", the character length must be smaller than or equal to 100.'
      end

      @dynamic_merchant_name = dynamic_merchant_name
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_number Value to be assigned
    def invoice_number=(invoice_number)
      if !invoice_number.nil? && invoice_number.to_s.length > 48
        fail ArgumentError, 'invalid value for "invoice_number", the character length must be smaller than or equal to 48.'
      end

      @invoice_number = invoice_number
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_order_number Value to be assigned
    def purchase_order_number=(purchase_order_number)
      if !purchase_order_number.nil? && purchase_order_number.to_s.length > 128
        fail ArgumentError, 'invalid value for "purchase_order_number", the character length must be smaller than or equal to 128.'
      end

      @purchase_order_number = purchase_order_number
    end

    # Custom attribute writer method with validation
    # @param [Object] mcc Value to be assigned
    def mcc=(mcc)
      if !mcc.nil? && mcc.to_s.length > 4
        fail ArgumentError, 'invalid value for "mcc", the character length must be smaller than or equal to 4.'
      end

      @mcc = mcc
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          reference_number == o.reference_number &&
          comments == o.comments &&
          dynamic_merchant_name == o.dynamic_merchant_name &&
          invoice_number == o.invoice_number &&
          purchase_order_number == o.purchase_order_number &&
          recurring_type == o.recurring_type &&
          installment_options == o.installment_options &&
          mcc == o.mcc &&
          dcc == o.dcc
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [reference_number, comments, dynamic_merchant_name, invoice_number, purchase_order_number, recurring_type, installment_options, mcc, dcc].hash
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