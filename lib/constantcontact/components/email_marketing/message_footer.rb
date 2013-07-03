#
# message_footer.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class MessageFooter < Component
      # Factory method to create a MessageFooter object from an array
      # @param [Hash] props - hash of properties to create object from
      # @return [MessageFooter]
      def self.create(props)
        message_footer = MessageFooter.new
        if props
          props.each do |key, value|
            message_footer.public_send("#{key}=", value)
          end
        end
        message_footer
      end

    end
  end
end
