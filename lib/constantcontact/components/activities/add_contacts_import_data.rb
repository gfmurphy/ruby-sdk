#
# add_contacts_import_data.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class AddContactsImportData < Component
      # Constructor to create an AddContactsImportData object from the given hash
      # @param [Hash] props - the hash with properties
      # @return [AddContactsImportData]
      def initialize(props = {})
        instance_variables.each do |property, value|
          send("#{property}=", get_value(props, property))
        end
      end

      # Setter
      def add_custom_field(custom_field)
        self.custom_fields = [] unless custom_fields?
        self.custom_fields << custom_field
      end


      # Setter
      def add_address(address)
        self.addresses = [] unless self.addresses?
        self.addresses << address
      end


      # Setter
      def add_email(email_address)
        self.email_addresses = [] unless email_addresses?
        self.email_addresses << email_address
      end

    end
  end
end
