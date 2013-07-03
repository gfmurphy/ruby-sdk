#
# email_address.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class EmailAddress < Component
      # Factory method to create an EmailAddress object from a json string
      # @param [Hash] props - array of properties to create object from
      # @return [EmailAddress]
      def self.create(props)
        email_address = EmailAddress.new
        if props
          props.each do |key, value|
            email_address.public_send("#{key}=", value)
          end
        end
        email_address
      end

    end
  end
end
