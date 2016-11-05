class Interest < ApplicationRecord
  include AASM

	enum status: [ :pending, :settled ]

  aasm column: :status, enum: true do
    state :pending, :initial => true
  end

  belongs_to :deposit
  belongs_to :settled_through

  validates :amount, presence: true, numericality: true
  validates :deposit_id, :status, presence: true
  validates :settled_through_id, :settled_on, presence: true, if: :settled?
end
