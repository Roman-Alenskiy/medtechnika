class Product < ApplicationRecord
    belongs_to :category
    mount_uploader :picture, PictureUploader
    validates :category_id, presence: true
    validates :name, presence: true
    validate :picture_size

    private
        # Validates the size of an uploaded picture.
        def picture_size
            if picture.size > 2.megabytes
            errors.add(:picture, "Картинка должна быть не более 2 Мб")
            end
        end
end
