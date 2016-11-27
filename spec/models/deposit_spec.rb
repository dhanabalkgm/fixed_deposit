require 'rails_helper'

RSpec.describe Deposit, type: :model do

  # Relation Matchers
  it { should belong_to(:depositer).autosave(true) }
  it { should belong_to(:interest_type) }
  it { should belong_to :interest_percent }

  # Validation
  it { should validate_presence_of(:deposited_on) }
  it { should validate_presence_of(:amount) }
  it { should validate_numericality_of(:amount).only_integer }

  # Delegate
  it { should delegate_method(:name).to(:depositer).with_prefix }
  it { should delegate_method(:name).to(:depositer).with_prefix(true) }
  it { should delegate_method(:mobile).to(:depositer).with_prefix(true) }
  it { should delegate_method(:name).to(:interest_type).with_prefix(true) }
  it { should delegate_method(:number).to(:interest_percent).with_prefix(:percent) }
end
