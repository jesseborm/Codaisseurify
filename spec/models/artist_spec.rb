require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    # it { is_expected.to validate_length_of(:image).is_at_most(254) }
  end

  describe "association" do
    it { is_expected.to have_many :songs }
  end

end
