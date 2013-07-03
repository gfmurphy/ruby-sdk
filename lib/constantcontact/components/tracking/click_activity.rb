#
# click_activity.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class ClickActivity < Component
      # Factory method to create a ClickActivity object from an array
      # @param [Hash] props - hash of properties to create object from
      # @return [ClickActivity]
      def self.create(props)
        click_activity = ClickActivity.new
        if props
          props.each do |key, value|
            click_activity.public_send("#{key}=", value)
          end
        end
        click_activity
      end

    end
  end
end
