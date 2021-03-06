class User < ApplicationRecord
  
   VALID_EMAIL_REGEX = /[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/
   VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
  
  validates :name, presence: true,
    length: {maximum: 15}
  
  validates :email, presence: true,
    format: {with: VALID_EMAIL_REGEX}
   
  has_secure_password
  
  validates :password, presence: true,
    format: { with: VALID_PASSWORD_REGEX }
  
end
