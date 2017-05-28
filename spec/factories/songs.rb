FactoryGirl.define do
  factory :song do
    title    { Faker::Book.title }
    # album    { Faker::Job.title }
    year     Time.now.strftime("%Y")
  end
end
