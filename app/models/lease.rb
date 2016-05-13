class Lease < ActiveRecord::Base
    belongs_to :apartment, required: true
    belongs_to :tenant, required: true
    
    def rent_owed
        now = Time.now.utc.to_date
        if self.start_date != nil
            months_into_lease = now.month - self.start_date.month - (self.start_date.to_date.change(:month => now.month) > now ? 1 : 0) + 1
            (months_into_lease * monthly_rent) - paid_rent
        end
    end

end
