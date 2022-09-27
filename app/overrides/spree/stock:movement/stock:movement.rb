# frozen_string_literal: true

module Spree
    class StockMovement 
        scope :increases, -> (bool) { ActiveModel::Type::Boolean.new.cast(bool) ? where(quantity: 0..) : where(quantity: ...0) }

        def self.ransackable_scopes(auth_object = nil)
            [:increases]
        end

        def self.ransackable_scopes_skip_sanitize_args
            [:increases]
        end

        self.whitelisted_ransackable_attributes |= ['created_at', 'originator_type']
    end
end