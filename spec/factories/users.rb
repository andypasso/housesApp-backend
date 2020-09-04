FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'foobar' }
    admin { false }
  end
end
