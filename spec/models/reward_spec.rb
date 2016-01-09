require 'rails_helper'

RSpec.describe Reward, type: :model do
  it { should belong_to(:project) }
  it { should validate_presence_of(:description) }
  it { should validate_length_of(:description).is_at_most(500) }
end
