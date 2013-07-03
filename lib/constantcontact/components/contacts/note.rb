#
# note.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class Note < Component
      # Factory method to create a Note object from a json string
      # @param props - JSON string representing a contact
      # @return Note
      def self.create(props)
        note = Note.new
        if props
          props.each do |key, value|
            note.public_send("#{key}=", value)
          end
        end
        note
    end
  end
end
