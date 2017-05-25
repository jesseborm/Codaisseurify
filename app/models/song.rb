class Song < ApplicationRecord
  belongs_to :artist
  

  # optional ordering
  def self.order_by_name
    order(:name)
  end
end
