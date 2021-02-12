class AddCustomerListRefToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :customer_list, null: false, foreign_key: true
  end
end
