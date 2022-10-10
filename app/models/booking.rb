class Booking < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :start, :end
end
