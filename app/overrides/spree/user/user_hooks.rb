module Spree
  class User
    before_save :set_spree_api_key

    def set_spree_api_key
      self.spree_api_key ||= SecureRandom.hex
    end
  end
end
