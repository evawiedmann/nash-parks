class Park < ApplicationRecord

  scope :random, -> { offset(rand(Park.count)).first }

  scope :search, -> (name) {where("name like ?", "%#{name}%")}
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true

end
