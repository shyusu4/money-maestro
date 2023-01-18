class Transaction < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :category, class_name: 'Category'
  validates :name, presence: true
  validates :amount, presence: true
  validates :user_id, presence: true
end
