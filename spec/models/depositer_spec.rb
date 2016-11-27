require 'rails_helper'

RSpec.describe Depositer, type: :model do

  # Relation Matchers
  it { should have_many(:deposits).dependent(:destroy) }

  # Validation Matchers
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_numericality_of(:mobile) }
  it { should validate_length_of(:mobile).is_at_least(10).is_at_most(15) }
  it { should allow_value(nil).for(:mobile) }
end
