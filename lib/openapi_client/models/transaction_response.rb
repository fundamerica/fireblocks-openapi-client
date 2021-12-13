=begin
#Fireblocks API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module OpenapiClient
  class TransactionResponse
    attr_accessor :id

    attr_accessor :asset_id

    attr_accessor :source

    attr_accessor :destination

    # The amount requested by the user
    attr_accessor :requested_amount

    # If the transfer is a withdrawal from an exchange, the actual amount that was requested to be transferred. Otherwise, the requested amount
    attr_accessor :amount

    # The net amount of the transaction, after fee deduction
    attr_accessor :net_amount

    # The USD value of the requested amount
    attr_accessor :amount_usd

    # The total fee deducted by the exchange from the actual requested amount (serviceFee = amount - netAmount)
    attr_accessor :service_fee

    # Deprecated - replaced by \"networkFee\"
    attr_accessor :fee

    # The fee paid to the network
    attr_accessor :network_fee

    # Unix timestamp
    attr_accessor :created_at

    # Unix timestamp
    attr_accessor :last_updated

    attr_accessor :status

    attr_accessor :tx_hash

    attr_accessor :tag

    attr_accessor :sub_status

    attr_accessor :destination_address

    attr_accessor :source_address

    attr_accessor :destination_address_description

    attr_accessor :destination_tag

    attr_accessor :signed_by

    attr_accessor :created_by

    attr_accessor :rejected_by

    attr_accessor :address_type

    attr_accessor :note

    attr_accessor :exchange_tx_id

    attr_accessor :fee_currency

    attr_accessor :operation

    attr_accessor :network_records

    attr_accessor :aml_screening_result

    attr_accessor :customer_ref_id

    attr_accessor :num_of_confirmations

    attr_accessor :amount_info

    attr_accessor :fee_info

    attr_accessor :signed_messages

    attr_accessor :extra_parameters

    attr_accessor :external_tx_id

    attr_accessor :destinations

    attr_accessor :block_info

    attr_accessor :authorization_info

    attr_accessor :index

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
        :'id' => :'id',
        :'asset_id' => :'assetId',
        :'source' => :'source',
        :'destination' => :'destination',
        :'requested_amount' => :'requestedAmount',
        :'amount' => :'amount',
        :'net_amount' => :'netAmount',
        :'amount_usd' => :'amountUSD',
        :'service_fee' => :'serviceFee',
        :'fee' => :'fee',
        :'network_fee' => :'networkFee',
        :'created_at' => :'createdAt',
        :'last_updated' => :'lastUpdated',
        :'status' => :'status',
        :'tx_hash' => :'txHash',
        :'tag' => :'tag',
        :'sub_status' => :'subStatus',
        :'destination_address' => :'destinationAddress',
        :'source_address' => :'sourceAddress',
        :'destination_address_description' => :'destinationAddressDescription',
        :'destination_tag' => :'destinationTag',
        :'signed_by' => :'signedBy',
        :'created_by' => :'createdBy',
        :'rejected_by' => :'rejectedBy',
        :'address_type' => :'addressType',
        :'note' => :'note',
        :'exchange_tx_id' => :'exchangeTxId',
        :'fee_currency' => :'feeCurrency',
        :'operation' => :'operation',
        :'network_records' => :'networkRecords',
        :'aml_screening_result' => :'amlScreeningResult',
        :'customer_ref_id' => :'customerRefId',
        :'num_of_confirmations' => :'numOfConfirmations',
        :'amount_info' => :'amountInfo',
        :'fee_info' => :'feeInfo',
        :'signed_messages' => :'signedMessages',
        :'extra_parameters' => :'extraParameters',
        :'external_tx_id' => :'externalTxId',
        :'destinations' => :'destinations',
        :'block_info' => :'blockInfo',
        :'authorization_info' => :'authorizationInfo',
        :'index' => :'index'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'asset_id' => :'String',
        :'source' => :'TransferPeerPathResponse',
        :'destination' => :'TransferPeerPathResponse',
        :'requested_amount' => :'Float',
        :'amount' => :'Float',
        :'net_amount' => :'Float',
        :'amount_usd' => :'Float',
        :'service_fee' => :'Float',
        :'fee' => :'Float',
        :'network_fee' => :'Float',
        :'created_at' => :'Float',
        :'last_updated' => :'Float',
        :'status' => :'String',
        :'tx_hash' => :'String',
        :'tag' => :'String',
        :'sub_status' => :'TransactionSubStatus',
        :'destination_address' => :'String',
        :'source_address' => :'String',
        :'destination_address_description' => :'String',
        :'destination_tag' => :'String',
        :'signed_by' => :'Array<String>',
        :'created_by' => :'String',
        :'rejected_by' => :'String',
        :'address_type' => :'String',
        :'note' => :'String',
        :'exchange_tx_id' => :'String',
        :'fee_currency' => :'String',
        :'operation' => :'TransactionOperation',
        :'network_records' => :'Array<NetworkRecord>',
        :'aml_screening_result' => :'AmlScreeningResult',
        :'customer_ref_id' => :'String',
        :'num_of_confirmations' => :'Float',
        :'amount_info' => :'AmountInfo',
        :'fee_info' => :'FeeInfo',
        :'signed_messages' => :'Array<SignedMessage>',
        :'extra_parameters' => :'Object',
        :'external_tx_id' => :'String',
        :'destinations' => :'Array<TransactionResponseDestination>',
        :'block_info' => :'BlockInfo',
        :'authorization_info' => :'AuthorizationInfo',
        :'index' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::TransactionResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::TransactionResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'asset_id')
        self.asset_id = attributes[:'asset_id']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'destination')
        self.destination = attributes[:'destination']
      end

      if attributes.key?(:'requested_amount')
        self.requested_amount = attributes[:'requested_amount']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'net_amount')
        self.net_amount = attributes[:'net_amount']
      end

      if attributes.key?(:'amount_usd')
        self.amount_usd = attributes[:'amount_usd']
      end

      if attributes.key?(:'service_fee')
        self.service_fee = attributes[:'service_fee']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'network_fee')
        self.network_fee = attributes[:'network_fee']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'last_updated')
        self.last_updated = attributes[:'last_updated']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tx_hash')
        self.tx_hash = attributes[:'tx_hash']
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.key?(:'sub_status')
        self.sub_status = attributes[:'sub_status']
      end

      if attributes.key?(:'destination_address')
        self.destination_address = attributes[:'destination_address']
      end

      if attributes.key?(:'source_address')
        self.source_address = attributes[:'source_address']
      end

      if attributes.key?(:'destination_address_description')
        self.destination_address_description = attributes[:'destination_address_description']
      end

      if attributes.key?(:'destination_tag')
        self.destination_tag = attributes[:'destination_tag']
      end

      if attributes.key?(:'signed_by')
        if (value = attributes[:'signed_by']).is_a?(Array)
          self.signed_by = value
        end
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'rejected_by')
        self.rejected_by = attributes[:'rejected_by']
      end

      if attributes.key?(:'address_type')
        self.address_type = attributes[:'address_type']
      end

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.key?(:'exchange_tx_id')
        self.exchange_tx_id = attributes[:'exchange_tx_id']
      end

      if attributes.key?(:'fee_currency')
        self.fee_currency = attributes[:'fee_currency']
      end

      if attributes.key?(:'operation')
        self.operation = attributes[:'operation']
      else
        self.operation = 'TRANSFER'
      end

      if attributes.key?(:'network_records')
        if (value = attributes[:'network_records']).is_a?(Array)
          self.network_records = value
        end
      end

      if attributes.key?(:'aml_screening_result')
        self.aml_screening_result = attributes[:'aml_screening_result']
      end

      if attributes.key?(:'customer_ref_id')
        self.customer_ref_id = attributes[:'customer_ref_id']
      end

      if attributes.key?(:'num_of_confirmations')
        self.num_of_confirmations = attributes[:'num_of_confirmations']
      end

      if attributes.key?(:'amount_info')
        self.amount_info = attributes[:'amount_info']
      end

      if attributes.key?(:'fee_info')
        self.fee_info = attributes[:'fee_info']
      end

      if attributes.key?(:'signed_messages')
        if (value = attributes[:'signed_messages']).is_a?(Array)
          self.signed_messages = value
        end
      end

      if attributes.key?(:'extra_parameters')
        self.extra_parameters = attributes[:'extra_parameters']
      end

      if attributes.key?(:'external_tx_id')
        self.external_tx_id = attributes[:'external_tx_id']
      end

      if attributes.key?(:'destinations')
        if (value = attributes[:'destinations']).is_a?(Array)
          self.destinations = value
        end
      end

      if attributes.key?(:'block_info')
        self.block_info = attributes[:'block_info']
      end

      if attributes.key?(:'authorization_info')
        self.authorization_info = attributes[:'authorization_info']
      end

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('String', ["SUBMITTED", "PENDING_SIGNATURE", "PENDING_AUTHORIZATION", "COMPLETED", "CONFIRMING", "FAILED", "REJECTED", "CANCELLING", "CANCELLED", "BROADCASTING", "BLOCKED", "TIMEOUT", "QUEUED", "PENDING_3RD_PARTY", "PENDING_3RD_PARTY_MANUAL_APPROVAL", "PENDING_AML_SCREENING", "PARTIALLY_COMPLETED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["SUBMITTED", "PENDING_SIGNATURE", "PENDING_AUTHORIZATION", "COMPLETED", "CONFIRMING", "FAILED", "REJECTED", "CANCELLING", "CANCELLED", "BROADCASTING", "BLOCKED", "TIMEOUT", "QUEUED", "PENDING_3RD_PARTY", "PENDING_3RD_PARTY_MANUAL_APPROVAL", "PENDING_AML_SCREENING", "PARTIALLY_COMPLETED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          asset_id == o.asset_id &&
          source == o.source &&
          destination == o.destination &&
          requested_amount == o.requested_amount &&
          amount == o.amount &&
          net_amount == o.net_amount &&
          amount_usd == o.amount_usd &&
          service_fee == o.service_fee &&
          fee == o.fee &&
          network_fee == o.network_fee &&
          created_at == o.created_at &&
          last_updated == o.last_updated &&
          status == o.status &&
          tx_hash == o.tx_hash &&
          tag == o.tag &&
          sub_status == o.sub_status &&
          destination_address == o.destination_address &&
          source_address == o.source_address &&
          destination_address_description == o.destination_address_description &&
          destination_tag == o.destination_tag &&
          signed_by == o.signed_by &&
          created_by == o.created_by &&
          rejected_by == o.rejected_by &&
          address_type == o.address_type &&
          note == o.note &&
          exchange_tx_id == o.exchange_tx_id &&
          fee_currency == o.fee_currency &&
          operation == o.operation &&
          network_records == o.network_records &&
          aml_screening_result == o.aml_screening_result &&
          customer_ref_id == o.customer_ref_id &&
          num_of_confirmations == o.num_of_confirmations &&
          amount_info == o.amount_info &&
          fee_info == o.fee_info &&
          signed_messages == o.signed_messages &&
          extra_parameters == o.extra_parameters &&
          external_tx_id == o.external_tx_id &&
          destinations == o.destinations &&
          block_info == o.block_info &&
          authorization_info == o.authorization_info &&
          index == o.index
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, asset_id, source, destination, requested_amount, amount, net_amount, amount_usd, service_fee, fee, network_fee, created_at, last_updated, status, tx_hash, tag, sub_status, destination_address, source_address, destination_address_description, destination_tag, signed_by, created_by, rejected_by, address_type, note, exchange_tx_id, fee_currency, operation, network_records, aml_screening_result, customer_ref_id, num_of_confirmations, amount_info, fee_info, signed_messages, extra_parameters, external_tx_id, destinations, block_info, authorization_info, index].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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