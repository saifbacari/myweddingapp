class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.datetime :date_of_event
      t.string :commentary

      t.timestamps
    end
  end
end
