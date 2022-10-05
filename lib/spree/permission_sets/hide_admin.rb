module Spree
  module PermissionSets
    class HideAdmin < PermissionSets::Base
      def activate!
        can :read, Spree.user_class

        admin_ids = Spree.user_class.admins.pluck(:id)
        cannot %i[admin read create update save_in_address_book remove_from_address_book addresses orders items],
               Spree.user_class, id: admin_ids

        cannot :read, Spree::Role, name: Spree.user_class::ADMIN_ROLES
      end
    end
  end
end
