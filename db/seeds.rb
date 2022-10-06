Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

# Override Default Seeds
puts '## Overriding default seeds ##'

puts 'Store'

store = Spree::Store.find_by(code: 'sample-store')
store.update(
  name: 'Almacen Liberte',
  code: 'almacen-liberte',
  url: 'https://almacen-liberte-test.herokuapp.com/',
  mail_from_address: 'almacen@liberte.com',
  default_currency: 'ARS',
  cart_tax_country_iso: 'AR'
)

puts 'Store Credit'

Spree::PaymentMethod.find_by(name: 'Store Credit').update(
  name: 'Saldo a cuenta',
  description: 'Saldo a cuenta',
  auto_capture: true,
  available_to_admin: true
)

Spree::StoreCreditCategory.delete_all
Spree::StoreCreditCategory.find_or_create_by!(name: 'Pagofacil')
Spree::StoreCreditCategory.find_or_create_by!(name: 'Transferencia Bancaria')
Spree::StoreCreditCategory.find_or_create_by!(name: 'MercadoPago')
Spree::StoreCreditCategory.find_or_create_by!(name: 'Efectivo/Cantina')

puts 'Return Reasons'

Spree::ReturnReason.delete_all
Spree::ReturnReason.find_or_create_by(name: 'Producto en mal estado')
Spree::ReturnReason.find_or_create_by(name: 'Error en el pedido')

puts 'Stock Location'

country = Spree::Country.find_by(iso: 'AR')

stock_location = Spree::StockLocation.find_by(name: 'default')
stock_location.assign_attributes(name: 'deposito', address1: 'Deposito sector 1', city: 'Mar del Plata',
                                 zipcode: '12345', country: country, state: country.states.first, default: true,
                                 active: true, backorderable_default: false, fulfillable: false)

stock_location.save!

puts 'Zones'

Spree::Zone.delete_all
arg_zone = Spree::Zone.find_or_create_by!(name: 'Argentina', description: 'Todo el territorio nacional')

%w[AR].each do |symbol|
  arg_zone.zone_members.find_or_create_by!(zoneable: Spree::Country.find_by!(iso: symbol))
end

puts 'Refund Reasons'

Spree::RefundReason.delete_all
Spree::RefundReason.find_or_create_by!(name: 'Devolucion', mutable: false)

puts 'Roles'

Spree::Role.find_or_create_by(name: 'user_management_admin')
Spree::Role.find_or_create_by(name: 'product_and_stock_management_admin')
Spree::Role.find_or_create_by(name: 'order_management_admin')

puts 'Shipping'

shipping_category = Spree::ShippingCategory.find_by(name: 'Default')
shipping_category.update(name: 'Gratis')

puts 'Taxes'

tax_category = Spree::TaxCategory.find_or_create_by!(name: 'Sin Impuestos', is_default: true)

Spree::ShippingMethod.create!([
                                {
                                  name: 'Envio gratis',
                                  zones: [arg_zone],
                                  calculator: Spree::Calculator::Shipping::FlatRate.create!,
                                  tax_category: tax_category,
                                  shipping_categories: [shipping_category]
                                }
                              ])

{
  'Envio gratis' => [0, 'ARS']
}.each do |shipping_method_name, (price, currency)|
  shipping_method = Spree::ShippingMethod.find_by!(name: shipping_method_name)
  shipping_method.calculator.preferences = {
    amount: price,
    currency: currency
  }
  shipping_method.calculator.save!
  shipping_method.save!
end

# TODO, create tax rate
