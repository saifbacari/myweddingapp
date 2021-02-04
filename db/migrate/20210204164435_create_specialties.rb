class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
      t.string :job_name
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
