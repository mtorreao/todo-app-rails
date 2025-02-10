class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :todo_lists, dependent: :destroy
  normalizes :email_address, with: ->(e) { e.strip.downcase }
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
end
