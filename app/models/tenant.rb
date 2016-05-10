class Tenant < ActiveRecord::Base
    has_many :leases
    has_many :tenants, through: :leases
end
