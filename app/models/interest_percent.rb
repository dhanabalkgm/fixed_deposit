class InterestPercent < ApplicationRecord
	has_many :deposits

	validates :number, presence: true, numericality: true, uniqueness: true
end
