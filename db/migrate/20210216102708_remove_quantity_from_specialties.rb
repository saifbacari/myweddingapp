class RemoveQuantityFromSpecialties < ActiveRecord::Migration[6.0]
  def change
    remove_column :specialties, :quantity, :integer
  end
end
