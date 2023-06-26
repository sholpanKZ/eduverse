class Course < ApplicationRecord
  has_many :lessons
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :video_url, presence: true
end
