module Spree
  class User
    ADMIN_ROLES = %w[
      admin
      user_management_admin
      product_and_stock_management_admin
      order_management_admin
    ]

    scope :admins, -> { joins(:spree_roles).where(spree_roles: { name: ADMIN_ROLES }) }
  end
end
