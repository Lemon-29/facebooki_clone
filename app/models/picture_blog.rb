class Picture_blog < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true, length: {in: 1..140}

  belongs_to :user
  mount_uploader :image, ImageUploader
end
