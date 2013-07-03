#
# contact.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class Contact < Component
      # Factory method to create a Contact object from a json string
      # @param [Hash] props - JSON string representing a contact
      # @return [Contact]
      def self.create(props)
        contact = Contact.new
        if props
          props.each do |key, value|
            if key == 'email_addresses'
              if value
                contact.email_addresses = []
                value.each do |email_address|
                  contact.email_addresses << Components::EmailAddress.create(email_address)
                end
              end
            elsif key == 'addresses'
              if value
                contact.addresses = []
                value.each do |address|
                  contact.addresses << Components::Address.create(address)
                end
              end
            elsif key == 'custom_fields'
              if value
                contact.custom_fields = []
                value.each do |custom_field|
                  contact.custom_fields << Components::CustomField.create(custom_field)
                end
              end
            elsif key == 'lists'
              if value
                contact.lists = []
                value.each do |contact_list|
                  contact.lists << Components::ContactList.create(contact_list)
                end
              end
            else
              contact.public_send("#{key}=", value)
            end
          end
        end
        contact
      end

      # Setter
      # @param [ContactList] contact_list
      def add_list(contact_list)
        self.lists = [] unless lists?
        self.lists << contact_list
      end


      # Setter
      # @param [EmailAddress] email_address
      def add_email(email_address)
        self.email_addresses = [] unless email_addresses?
        self.email_addresses << email_address
      end


      # Setter
      # @param [Address] address
      def add_address(address)
        self.addresses = [] unless addresses?
        self.addresses << address
      end

    end
  end
end
