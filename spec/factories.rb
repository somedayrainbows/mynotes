FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
  end

  factory :note do
    title { Faker::Artist.name }
    body { Faker::ChuckNorris.fact }
  end
end
