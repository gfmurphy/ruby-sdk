#
# test_send.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class TestSend < Component
      # Factory method to create a TestSend object from an array
      # @param [Hash] props - hash of properties to create object from
      # @return [TestSend]
      def self.create(props)
        test_send = TestSend.new
        if props
          props.each do |key, value|
            if key == 'email_addresses'
              if value
                test_send.email_addresses = []
                value.each do |email_address|
                  test_send.email_addresses << email_address
                end
              end
            else
              test_send.public_send("#{key}=", value)
            end
          end
        end
        test_send
      end


      # Add an email address to the set of addresses to send the test send too
      # @param [String] email_address
      def add_email(email_address)
        self.email_addresses = [] unless email_addresses?
        self.email_addresses << email_address
      end

    end
  end
end
