class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 8, maximum: 20 }
  validates :body, presence: true, length: { minimum: 8 }

  has_many :comments
  belongs_to :user
end
