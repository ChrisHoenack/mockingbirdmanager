class Apartment < ActiveRecord::Base
    has_many :leases
    has_many :tenants, through: :leases
    def unit_name
        "#{building} ##{unit}"
    end

end
