class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :micropost_favorite, through: :reverses_of_favorite, source: :user
  has_many :favorite_micropost, through: :favorites, source: :micropost
  validates :content, presence: true, length: { maximum: 255 }
  
  
end
