class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
    # Customize the redirection logic here
    if resource.admin?
      admin_root_path
		elsif resource.has_spree_role?(:user_management_admin)
			admin_users_path
		elsif resource.has_spree_role?(:product_and_stock_management_admin)
			admin_products_path
		elsif resource.has_spree_role?(:order_management_admin)
			admin_orders_path
    else
      # Redirect regular users to a different path
      root_path
    end
  end

end
