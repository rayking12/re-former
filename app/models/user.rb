class User < ApplicationRecord
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in 3..15 }
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { in 8...16 }
end
