#
# tracking_summary.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class TrackingSummary < Component
      # Factory method to create a TrackingSummary object from an array
      # @param [Hash] props - array of properties to create object from
      # @return [TrackingSummary]
      def self.create(props)
        tracking_summary = TrackingSummary.new
        if props
          props.each do |key, value|
            tracking_summary.public_send("#{key}=", value)
          end
        end
        tracking_summary
      end

    end
  end
end
