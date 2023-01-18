class GroupTransaction < ApplicationRecord
    belongs_to :transaction, class_name: 'Transaction'
    belongs_to :category, class_name: 'Category'
    validates :category, presence: true
  validates :transaction, presence: true
end
