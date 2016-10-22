class InterestPercent < ApplicationRecord
	validates :number, presence: true, numericality: true, uniqueness: true
end
