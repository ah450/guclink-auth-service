require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_secure_password }
  it { should have_many :reset_tokens }
  it { should have_many :verification_tokens }
  it { should validate_presence_of :email }
  it { should validate_presence_of :name }

  it 'has a valid student factory' do
    expect(FactoryGirl.build(:student)).to be_valid
  end

  it 'has a valid teacher factory' do
    expect(FactoryGirl.build(:teacher)).to be_valid
  end

  it 'has a valid super user faactory' do
    expect(FactoryGirl.build(:super_user)).to be_valid
  end
end
