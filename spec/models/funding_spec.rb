require 'rails_helper'

RSpec.describe Funding, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:project) }
  it { should belong_to(:reward) }
end
