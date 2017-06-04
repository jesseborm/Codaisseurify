FactoryGirl.define do
  factory :song do
    title    { Faker::Book.title }
    album    { Faker::Book.title }
    # year     Time.now.strftime("%Y")
  end
end
