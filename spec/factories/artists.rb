FactoryGirl.define do
  factory :artist do
    name    { Faker::Name.first_name }
    image   { Faker::Lorem.sentence(250) }
  end
end
