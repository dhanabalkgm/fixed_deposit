require 'rails_helper'

RSpec.describe SettledThrough, type: :model do

  # Association Matchers
  it { should have_many(:interests) }

  # Validation Matchers
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end
