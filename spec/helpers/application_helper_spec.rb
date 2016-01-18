require 'rails_helper'

RSpec.describe ApplicationHelper do
  describe '#resource_class' do
    it 'return user class' do
      expect(helper.resource_class).to eq User
    end
  end

  describe '#devise_mapping' do
    it 'should mapping user' do
      expect(helper.devise_mapping).to eq Devise.mappings[:user]
    end
  end

  describe '#resource' do
    before do
      @resource = User.new
    end
    it 'should initialize or find current user and return it' do
      expect(helper.resource).to eq @resource
    end
  end

  describe '#resource_name' do
    it 'return name of resource' do
      expect(helper.resource_name).to eq :user
    end
  end
end
