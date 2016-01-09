require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:project) }
  it { should validate_presence_of(:body) }
  it { should validate_length_of(:body).is_at_most(500) }
  it { should validate_inclusion_of(:rating).in_range(1..5) }
end
