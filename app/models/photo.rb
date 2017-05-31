class Photo < ApplicationRecord
  belongs_to :arist, optional: true

  mount_uploader :image, ImageUploader
end
