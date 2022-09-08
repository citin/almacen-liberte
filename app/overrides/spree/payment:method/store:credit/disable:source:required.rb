Spree::PaymentMethod::StoreCredit.class_eval do
  def source_required?
    false
  end
end
