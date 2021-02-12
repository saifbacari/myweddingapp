class AddIslandRefToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :island, null: false, foreign_key: true
  end
end
