#
# activity.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class Activity < Component
      # Factory method to create an Activity object from a json string
      # @param [Hash] props - hash of properties to create object from
      # @return [Activity]
      def self.create(props)
        activity = Activity.new
        if props
          props.each do |key, value|
            if key == 'errors'
              if value
                activity.errors = []
                value.each do |error|
                  activity.errors << Components::ActivityError.create(error)
                end
              end
            elsif key == 'warnings'
              if value
                activity.warnings = []
                value.each do |error|
                  activity.warnings << Components::ActivityError.create(error)
                end
              end
            else
              activity.public_send("#{key}=", value)
            end
          end
        end
        activity
      end

    end
  end
end
