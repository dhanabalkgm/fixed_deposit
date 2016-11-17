require 'rails_helper'

RSpec.describe Deposit, type: :model do

  # Relation Matchers
  it {should belong_to(:depositer).autosave(true)}
  it {should belong_to(:interest_type)}
  it {should belong_to :interest_percent}
end
