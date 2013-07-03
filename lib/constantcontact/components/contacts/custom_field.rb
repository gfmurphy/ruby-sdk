#
# custom_field.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class CustomField < Component
      # Factory method to create a CustomField object from a json string
      # @param [Hash] props - array of properties to create object from
      # @return [CustomField]
      def self.create(props)
        custom_field = CustomField.new
        if props
          props.each do |key, value|
            custom_field.public_send("#{key}=", value)
          end
        end
        custom_field
      end

    end
  end
end
