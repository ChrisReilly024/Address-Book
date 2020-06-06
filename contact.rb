class Contact
    attr_accessor :first_name, :middle_name, :last_name

    def initialize(first_name, middle_name = '', last_name)
        @first_name = first_name
        @middle_name = middle_name
        @last_name = last_name
    end
    
    def full_name
        @middle_name == '' ? "#{first_name} X #{last_name}" : "#{first_name} #{middle_name} #{last_name}"
    end
    
    def last_first
        @middle_name == '' ? "#{last_name}, #{first_name}" : "#{last_name}, #{first_name} #{middle_name[0]}."
    end    
end



