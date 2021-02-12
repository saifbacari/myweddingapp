class CustomerList < ApplicationRecord
  has_many :customers

  belongs_to :service_provider
end
