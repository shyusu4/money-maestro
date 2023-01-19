require 'rails_helper'

RSpec.describe Category, type: :model do
  subject(:category) { Category.create(name: 'Food', icon: 'Food icon', user_id: 1) }

  it 'should have user id 1' do
    expect(category.user_id).to eq(1)
  end
  
  it 'should have name' do
    category.name = nil
    expect(category).to_not be_valid
  end

  it 'should have the correct name' do
    expect(category.name).to eq('Food')
  end

  it 'should have an icon' do
    category.icon = nil
    expect(category).to_not be_valid
  end

  it 'should have the correct icon' do
    expect(category.icon).to eq('Food icon')
  end
end