class Post < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { minimum: 2 }
end
