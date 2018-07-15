class Category < ApplicationRecord
    default_scope -> { order(name: :asc) }
    before_validation :capitalize_name
    has_many :products, dependent: :destroy
    validates :name, presence: true
    validates :name, uniqueness: {case_sensitive: false}
    

    private 

        def capitalize_name
            name.capitalize!
        end
end
