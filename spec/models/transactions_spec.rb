require 'rails_helper'

RSpec.describe Transaction, type: :model do
  subject(:transaction) { Transaction.create(name: 'Candle', amount: 4, user_id: 1) }

  it 'should have the correct user_id' do
    expect(transaction.user_id).to eq(1)
  end

  it 'should have the correct name' do
    expect(transaction.name).to eq('Candle')
  end

  it 'should have name' do
    transaction.name = nil
    expect(transaction).to_not be_valid
  end

  it 'should have the correct amount' do
    expect(transaction.amount).to eq(4)
  end

  it 'should have amount' do
    transaction.amount = nil
    expect(transaction).to_not be_valid
  end
end
