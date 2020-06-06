class PhoneNumber
    attr_accessor :kind, :phone
    
    def initialize(kind, phone)
        @kind = kind
        @phone = phone
    end

    def to_s
        "#{kind}: #{phone}"
    end

end