class Account < ApplicationRecord
  has_secure_password
  has_many :diaries
  has_many :articles
  has_many :comments
end
