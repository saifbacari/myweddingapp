class CustomerList < ApplicationRecord
  belongs_to :customer
  belongs_to :specialty
end
