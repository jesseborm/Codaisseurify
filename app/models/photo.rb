class Photo < ApplicationRecord
  belongs_to :arist

  mount_uploader :image, ImageUploader
end
