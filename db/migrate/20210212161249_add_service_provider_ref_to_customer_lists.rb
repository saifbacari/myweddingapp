class AddServiceProviderRefToCustomerLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :customer_lists, :service_provider, null: false, foreign_key: true
  end
end
