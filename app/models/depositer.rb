class Depositer < ApplicationRecord

  has_many :deposits, dependent: :destroy
  validates :name, presence: true,
            uniqueness: true
  validates :mobile, numericality: true,
            length: {minimum: 10, maximum: 15},
            allow_blank: true

end
