require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:project_thumbnail_url) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:category) }
  it { should belong_to(:category) }
  it { should belong_to(:user) }
  it { should have_many(:comments) }
  it { should have_many(:rewards) }
end
