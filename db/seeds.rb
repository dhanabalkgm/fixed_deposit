# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# -----------------------------------------------------------------------
# Interest Type
# -----------------------------------------------------------------------
INTEREST_TYPE = ['Monthly', 'Weekly', 'Add it to deposit']
INTEREST_TYPE.each do |interest_type|
  InterestType.create!(name: interest_type)
end	

# -----------------------------------------------------------------------
# Interest Percent
# -----------------------------------------------------------------------
INTEREST_PERCENT = [0.75, 1, 1.5, 2]
INTEREST_PERCENT.each do |interest_percent|
	InterestPercent.create!(number: interest_percent)
end

# -----------------------------------------------------------------------
# Settled Through
# -----------------------------------------------------------------------
SETTLED_THROUGH = ['Cash', 'Net Banking', 'Added to deposit']
SETTLED_THROUGH.each do |settled_through|
	SettledThrough.create!(name: settled_through)
end