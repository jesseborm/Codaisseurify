class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  # validates :image, length: { maximum: 255 }, allow_blank: true
end
