require_relative 'phone-number'
require_relative 'address'

class Contact
    attr_accessor :first_name, :middle_name, :last_name

    def initialize(first_name, middle_name = '', last_name)
        @first_name = first_name
        @middle_name = middle_name
        @last_name = last_name
        @phone_numbers = []
        @addresses = []
    end
    
    def full_name
        @middle_name == '' ? "#{first_name} X #{last_name}" : "#{first_name} #{middle_name} #{last_name}"
    end
    
    def last_first
        @middle_name == '' ? "#{last_name}, #{first_name}" : "#{last_name}, #{first_name} #{middle_name[0]}."
    end    

    def add_number(kind, phone_number)
        @phone_numbers << PhoneNumber.new(kind, phone_number)
    end

    def add_address(kind, street_1, street_2, city, state, zip)
        @addresses << Address.new()
    end

    def print_phone_numbers
        puts "Phone Numbers:"
        @phone_numbers.each {|num| puts num}
    end

    def print_addresses
        puts "Addresses:"
        addresses.each { |addr| puts addr }
    end
    def first_last
        "#{first_name} #{last_name}"
    end

    def to_s(format = 'full_name')
        case format
        when 'full_name'
            full_name
        when 'last_first'
            last_first
        when 'first'
            first_name
        when 'last'
            last_name
        else
            first_last
        end
    end
end
# anakin = Contact.new('Anakin', 'Skywalker')
# puts anakin
# anakin.add_number('mobile', '555-555-5555')
# puts anakin.print_phone_numbers
# pp anakin
# p anakin.full_name
# p anakin.last_first