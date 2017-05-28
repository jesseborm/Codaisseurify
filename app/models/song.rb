class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  # validates_numericality_of :year, only_integer: true, length: { maximum: 4 }, allow_blank:true

  # optional ordering
  def self.order_by_title
    order(:title)
  end
end
