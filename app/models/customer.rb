class Customer < ApplicationRecord
  has_many :meetings, dependent: :destroy
  has_many :service_providers, through: :meetings
  has_many :customer_lists, dependent: :destroy

  belongs_to :island

  accepts_nested_attributes_for :island
end
