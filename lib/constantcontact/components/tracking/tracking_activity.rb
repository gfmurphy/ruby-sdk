#
# tracking_activity.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class TrackingActivity < Component
      # Constructor to create a TrackingActivity from the results/pagination response from getting a set of activities
      # @param [Array] results - results array from a tracking endpoint
      # @param [Hash] pagination - pagination hash returned from a tracking endpoint
      # @return [TrackingActivity]
      def initialize(results, pagination)
        self.results = results

        if (pagination.has_key?('next'))
          self.next = pagination['next'][pagination['next'].index('&next=') + 6, pagination['next'].length]
        end
      end

    end
  end
end
