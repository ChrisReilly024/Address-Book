class Address
    attr_accessor :kind, :street_1, :street_2, :city, :state, :zip_code
    def initialize( kind, street_1, street_2 = '', city, state, zip_code)
        @kind = kind
        @street_1 = street_1
        @street_2 = street_2
        @city = city
        @state = state
        @zip_code = zip_code
    end

    def to_s
        %Q(
        #{kind}
        #{street_1} #{street_2}
        #{city}, #{state} #{zip_code}
        )
    end
end








