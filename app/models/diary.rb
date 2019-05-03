class Diary < ApplicationRecord
  has_many :articles
  belongs_to :accounts
end
