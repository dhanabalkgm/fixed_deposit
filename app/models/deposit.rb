class Deposit < ApplicationRecord
  belongs_to :depositer, autosave: true
  belongs_to :interest_type
  belongs_to :interest_percent

  validates :deposited_on, :depositer_id, :interest_percent_id, :interest_type_id, presence: true
  validates :amount, presence: true, numericality: { only_integer: true }

  scope :all_except, ->(deposit) { where.not(id: deposit)}

  delegate :name, :mobile, to: :depositer, prefix: true
  delegate :name, to: :interest_type, prefix: true
  delegate :number, to: :interest_percent, prefix: :percent

  DEFAULT_SELECTION = {interest_type: "Monthly", interest_percent: 1.5}

  def self.total_deposits
    sum(:amount)
  end

end
