require 'rails_helper'

RSpec.describe Story, type: :model do
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:risk_challenges) }
  it { should validate_presence_of(:project_video_url) }
  it { should belong_to(:project) }
end
