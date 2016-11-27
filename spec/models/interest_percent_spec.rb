require 'rails_helper'

RSpec.describe InterestPercent, type: :model do
  # Association Matchers
  it { should have_many(:deposits) }

  # Validation Matchers
  it { should validate_presence_of(:number) }
  it { should validate_uniqueness_of(:number) }
  it { should validate_numericality_of(:number) }
end
