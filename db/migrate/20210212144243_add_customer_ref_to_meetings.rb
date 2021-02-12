class AddCustomerRefToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_reference :meetings, :customer, null: false, foreign_key: true
  end
end
