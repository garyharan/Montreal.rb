FactoryGirl.define do
  factory :event do
    title { Faker::Lorem.sentence }
    starts_at Time.now.utc + 2.days
    association :author, factory: :user
    location
  end
end
