FactoryBot.define do
  factory :note do
    title { Faker::Artist.name }
    body { Faker::ChuckNorris.fact }
  end
end
