class ServiceProvider < ApplicationRecord
  belongs_to :island
  belongs_to :specialty

  has_many :customers, through: :meetings
end
