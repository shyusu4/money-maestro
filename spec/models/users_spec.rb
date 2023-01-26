require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.create(name: 'Amy') }

  it 'should have name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'should have the correct name' do
    expect(user.name).to eq('Amy')
  end
end
