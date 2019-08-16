class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
