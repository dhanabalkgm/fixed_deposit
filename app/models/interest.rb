class Interest < ApplicationRecord

	enum status: [ :pending, :settled ]

  belongs_to :deposit
  belongs_to :settled_through

  validates :amount, presence: true, numericality: true
  validates :deposit_id, :status, presence: true
  validates :settled_through_id, :settled_on, presence: true, if: :settled?
end
