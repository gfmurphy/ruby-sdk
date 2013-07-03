#
# bounce_activity.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class BounceActivity < Component
      # Factory method to create a BounceActivity object from an array
      # @param [Hash] props - hash of properties to create object from
      # @return [BounceActivity]
      def self.create(props)
        bounce_activity = BounceActivity.new
        if props
          props.each do |key, value|
            bounce_activity.public_send("#{key}=", value)
          end
        end
        bounce_activity
      end

    end
  end
end
