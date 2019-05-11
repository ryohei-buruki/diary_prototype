class Comment < ApplicationRecord
  belongs_to :account, optional: true
  belongs_to :article
end
