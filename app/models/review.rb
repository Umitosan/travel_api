class Review < ApplicationRecord
  belongs_to :destination

  validates :content, presence: true
  validates :author, presence: true

  scope :search, -> (name) { where("author like ?", "%#{name}%")}

end
