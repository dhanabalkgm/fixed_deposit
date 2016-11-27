require 'rails_helper'

RSpec.describe InterestType, type: :model do

  # Association Matchers
  it { should have_many(:deposits) }

  # Validation Matchers
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  pending 'validate days if customized'
end
