class Artist < ApplicationRecord
  # If I use nested routing, can I ommit dependent: :destroy?
  has_many :songs, dependent: :destroy
  # has_one :photo
end
