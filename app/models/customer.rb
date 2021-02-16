class Customer < ApplicationRecord
  has_many :orders
  has_many :meetings
  has_many :service_providers, through: :meetings

  belongs_to :island
end
