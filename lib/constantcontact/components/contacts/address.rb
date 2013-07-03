#
# address.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class Address < Component
      # Factory method to create an Address object from a json string
      # @param [Hash] props - array of properties to create object from
      # @return [Address]
      def self.create(props)
        address = Address.new
        if props
          props.each do |key, value|
            address.public_send("#{key}=", value)
          end
        end
        address
      end

    end
  end
end
