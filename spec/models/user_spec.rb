require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations for new user' do
    let(:user) { User.new(name: "Testuser", email:"testuser@test.com", password: "password123")}
    it 'check if user is valid' do
      expect(user).to be_valid
    end

    it 'invalid if email is blank' do
      user.email = ''
      expect(user).not_to be_valid
    end

    it 'invalid if name is blank' do
      user.name = ''
      expect(user).not_to be_valid
    end
  end

  context 'Associations for user' do
    it { should have_many(:posts) }
    it { should have_many(:friendships) }
    it { should have_many(:likes) }
    it { should have_many(:comments) }
    it { should have_many(:inverse_friendships) }
  end

end