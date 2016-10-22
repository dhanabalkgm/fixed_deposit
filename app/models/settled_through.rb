class SettledThrough < ApplicationRecord
	validates :name, presence: true, uniqueness: true
end
