class CommentsOfComment < ApplicationRecord
  belongs_to :accounts
  belongs_to :comments
end
