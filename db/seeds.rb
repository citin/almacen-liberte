# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
  mail_from_address: 'almacen@liberte.com'
)

puts 'Store Credit'

Spree::StoreCreditCategory.find_or_create_by!(name: 'Saldo a cuenta')

puts 'Return Reasons'

Spree::ReturnReason.delete_all
Spree::ReturnReason.find_or_create_by(name: 'Producto en mal estado')
Spree::ReturnReason.find_or_create_by(name: 'Error en el pedido')

puts 'Stock Location'

Spree::StockLocation.find_by(name: 'default').update(name: 'deposito')

puts 'Zones'

Spree::Zone.delete_all

puts 'Refund Reasons'

Spree::RefundReason.delete_all
Spree::RefundReason.find_or_create_by!(name: 'Devolucion', mutable: false)

puts 'Roles'

Spree::Role.find_or_create_by(name: 'user_management_admin')
Spree::Role.find_or_create_by(name: 'product_and_stock_management_admin')
Spree::Role.find_or_create_by(name: 'order_management_admin')

puts 'Shipping'

Spree::ShippingCategory.find_by(name: 'Default').update(name: 'Gratis')
