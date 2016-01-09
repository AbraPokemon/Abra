require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:location) }
  it { should validate_uniqueness_of(:full_name) }
end
