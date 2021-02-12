class AddServiceProviderToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_reference :meetings, :service_provider, null: false, foreign_key: true
  end
end
