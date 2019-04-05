FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
  end

  factory :note do
    title { Faker::Artist.name }
    body { Faker::ChuckNorris.fact }
  end
end
