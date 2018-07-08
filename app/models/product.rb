class Product < ApplicationRecord
    belongs_to :category
    default_scope -> { order(created_at: :desc) }
    validates :category_id, presence: true
    validates :name, presence: true
end
