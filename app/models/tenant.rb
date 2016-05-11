class Tenant < ActiveRecord::Base
    has_many :leases
    has_many :tenants, through: :leases
    def full_name
        "#{last_name}, #{first_name}"
    end
end
