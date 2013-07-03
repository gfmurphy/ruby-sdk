#
# export_contacts.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class ExportContacts < Component
      # Constructor to create an ExportContacts object
      # @param [Array] lists - array of lists ids
      # @return [ExportContacts]
      def initialize(lists = nil)
        if !lists.nil?
          self.lists = lists
        end
        self.file_type = 'CSV'
        self.sort_by = 'EMAIL_ADDRESS'
        self.export_date_added = true
        self.export_added_by = true
        self.column_names = ['Email Address', 'First Name', 'Last Name']
      end

    end
  end
end
