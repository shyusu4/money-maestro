class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :transactions, dependent: :destroy
  has_many :group_transactions, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
end
