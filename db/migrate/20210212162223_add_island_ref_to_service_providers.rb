class AddIslandRefToServiceProviders < ActiveRecord::Migration[6.0]
  def change
    add_reference :service_providers, :island, null: false, foreign_key: true
  end
end
