class Comment < ApplicationRecord
  belongs_to :article
  #migrate by 'article:references'
  validates :commenter, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 10}
end
