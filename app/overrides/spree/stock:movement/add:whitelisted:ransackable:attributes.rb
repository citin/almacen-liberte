# frozen_string_literal: true

module Spree
    class StockMovement 
        self.whitelisted_ransackable_attributes |= ['created_at', 'originator_type']
    end
end