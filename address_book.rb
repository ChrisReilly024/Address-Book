require_relative 'address'
require_relative 'contact'

class AddressBook
    attr_reader :contacts
    def initialize
        @contacts = []
    end

    def to_s
        puts "Contacts:"
        @contacts.each {|contact| puts contact.to_s('last_first') }
    end
end

# a = AddressBook.new
# a.contacts.push('joe, M')
# a.contacts.push('joe, A')
# a.contacts.push('joe, B')
# a.contacts.push('joe, E')
# pp a.to_s