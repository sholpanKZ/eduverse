class Course < ApplicationRecord
  has_many :lessons
  has_many :likes
  has_one :quiz
  has_many_attached :images
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
