class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :transactions, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
  validates :amount, presence: true
end
