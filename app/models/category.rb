class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :transactions, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true

  def transactions_sum
    total = 0
    transactions.each do |transactions|
      total += transactions.amount
    end
    total
  end
end
