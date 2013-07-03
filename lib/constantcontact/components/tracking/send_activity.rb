#
# send_activity.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class SendActivity < Component
      # Factory method to create a SendActivity object from an array
      # @param [Hash] props - hash of properties to create object from
      # @return [SendActivity]
      def self.create(props)
        send_activity = SendActivity.new
        if props
          props.each do |key, value|
            send_activity.public_send("#{key}=", value)
          end
        end
        send_activity
      end

    end
  end
end
