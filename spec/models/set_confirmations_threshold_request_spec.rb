=begin
#Fireblocks API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::SetConfirmationsThresholdRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::SetConfirmationsThresholdRequest do
  let(:instance) { OpenapiClient::SetConfirmationsThresholdRequest.new }

  describe 'test an instance of SetConfirmationsThresholdRequest' do
    it 'should create an instance of SetConfirmationsThresholdRequest' do
      expect(instance).to be_instance_of(OpenapiClient::SetConfirmationsThresholdRequest)
    end
  end
  describe 'test attribute "num_of_confirmations"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end