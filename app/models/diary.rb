class Diary < ApplicationRecord
  has_many :articles
  accepts_nested_attributes_for :articles
  belongs_to :accounts, optional: true
end
