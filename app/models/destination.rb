class Destination < ApplicationRecord

  validates :city, presence: true
  validates :country, presence: true

end
