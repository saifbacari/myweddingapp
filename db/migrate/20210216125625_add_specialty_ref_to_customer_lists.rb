class AddSpecialtyRefToCustomerLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :customer_lists, :specialty, null: false, foreign_key: true
  end
end
