require 'rails_helper'

RSpec.describe Interest, type: :model do

  # Association Matchers
  it { should belong_to(:deposit) }
  it { should belong_to(:settled_through) }

  # Validation Matchers
  it { should validate_presence_of(:amount) }
  it { should validate_numericality_of(:amount) }
  it { should validate_presence_of(:status) }
  pending "settled_through validation with if condition"
end
