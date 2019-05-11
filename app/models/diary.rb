class Diary < ApplicationRecord
  has_many :articles, dependent: :destroy
  accepts_nested_attributes_for :articles, allow_destroy: true
  belongs_to :account, optional: true
end
