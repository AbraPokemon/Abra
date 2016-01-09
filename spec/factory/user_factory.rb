FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    full_name { Faker::Name.name }
    location { Faker::Address.city }
  end
end
