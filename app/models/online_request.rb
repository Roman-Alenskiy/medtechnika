class OnlineRequest < ApplicationRecord

    default_scope -> { order(created_at: :desc) }
    
    before_save :downcase_email

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    VALID_PHONE_REGEX = /\A[\d\s\-\+]+\z/

    validates :customer_name, presence: true, length: {maximum: 30} 
    validates :customer_email, presence: true, length: {maximum: 255}, 
              format: {with: VALID_EMAIL_REGEX}
    validates :customer_phone_number, length: {minimum:3, maximum: 30},
              format: {with: VALID_PHONE_REGEX}
    validates :subject, presence: true, length: {maximum: 255}
    validates :message, presence: true

    private

        # Converts email to all lower-case
        def downcase_email
            customer_email.downcase!
        end
end
