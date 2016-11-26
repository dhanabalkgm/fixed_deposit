class Interest < ApplicationRecord
  include AASM

	enum status: [ :pending, :settled ]

  aasm column: :status, enum: true do
    state :pending, :initial => true
  end

  belongs_to :deposit
  belongs_to :settled_through

  # validation for belongs_to is not required because by default ih has
  # http://blog.bigbinary.com/2016/02/15/rails-5-makes-belong-to-association-required-by-default.html

  validates :amount, presence: true, numericality: true
  validates :status, presence: true
  validates :settled_through_id, :settled_on, presence: true, if: :settled?
end
