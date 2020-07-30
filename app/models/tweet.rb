class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments

  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Tweet.where('title LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end