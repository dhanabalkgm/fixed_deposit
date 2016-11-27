class InterestType < ApplicationRecord
	has_many :deposits

	validates :name, presence: true, uniqueness: true
	validates :days, presence: true, numericality: { only_integer: true }, uniqueness: true, if: :customized
end
