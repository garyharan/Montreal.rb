FactoryGirl.define do
  factory :job do
    state "draft"
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    association :author, factory: :user
    organization
  end
end
