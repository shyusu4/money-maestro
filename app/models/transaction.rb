class Transaction < ApplicationRecord
    belongs_to :user, class_name: 'User'
    belongs_to :category, class_name: 'Category'
    has_many :group_transactions, dependent: :destroy
    has_many :categories, dependent: :destroy
    validates :name, presence: true
    validates :icon, presence: true
end
