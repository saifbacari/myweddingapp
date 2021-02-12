class AddServiceProviderRefToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :service_provider, null: false, foreign_key: true
  end
end
