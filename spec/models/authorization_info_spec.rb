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

# Unit tests for OpenapiClient::AuthorizationInfo
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::AuthorizationInfo do
  let(:instance) { OpenapiClient::AuthorizationInfo.new }

  describe 'test an instance of AuthorizationInfo' do
    it 'should create an instance of AuthorizationInfo' do
      expect(instance).to be_instance_of(OpenapiClient::AuthorizationInfo)
    end
  end
  describe 'test attribute "allow_operator_as_authorizer"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "logic"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["AND", "OR"])
      # validator.allowable_values.each do |value|
      #   expect { instance.logic = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "groups"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end