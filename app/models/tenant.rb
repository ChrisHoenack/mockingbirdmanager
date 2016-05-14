class Tenant < ActiveRecord::Base
    has_many :leases
    has_many :tenants, through: :leases
    validates :first_name, :last_name, :dob, presence: true
    def full_name
        "#{last_name}, #{first_name}"
    end
end
