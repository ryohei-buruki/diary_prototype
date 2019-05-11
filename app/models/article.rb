class Article < ApplicationRecord
  belongs_to :account, optional: true
  belongs_to :diary, optional: true
  belongs_to :item
  has_many :comments
end
