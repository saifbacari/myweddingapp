class AddCustomerRefToCustomerLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :customer_lists, :customer, null: false, foreign_key: true
  end
end
