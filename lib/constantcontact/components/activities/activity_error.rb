#
# activity_error.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class ActivityError < Component
      # Factory method to create an ActivityError object from an array
      # @param [Hash] props - hash of properties to create object from
      # @return [ActivityError]
      def self.create(props)
        activity_error = ActivityError.new
        if props
          props.each do |key, value|
            activity_error.public_send("#{key}=", value)
          end
        end
        activity_error
      end

    end
  end
end
