# frozen_string_literal: true

module Spree
	class Shipment
		# set shipped as default state for new shipments
		before_create :set_default_state

		def set_default_state
			self.state = 'shipped'
		end
	end
end
