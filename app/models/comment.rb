class Comment < ApplicationRecord
  belongs_to :accounts
  belongs_to :articles
end
