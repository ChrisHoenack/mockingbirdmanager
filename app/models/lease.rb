class Lease < ActiveRecord::Base
    belongs_to :apartment, required: true
    belongs_to :tenant, required: true
end
