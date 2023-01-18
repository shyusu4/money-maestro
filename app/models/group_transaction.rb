class GroupTransaction < ApplicationRecord
    belongs_to :transaction, class_name: 'Transaction'
    belongs_to :category, class_name: 'Category'
end
