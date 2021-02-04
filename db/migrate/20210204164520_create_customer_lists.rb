class CreateCustomerLists < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_lists do |t|

      t.timestamps
    end
  end
end
