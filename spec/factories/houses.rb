FactoryBot.define do
    factory :house do
      title { Faker::Lorem.word }
      description { Faker::Lorem.word }
    end
  end