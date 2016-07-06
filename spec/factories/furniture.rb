require 'faker'
FactoryGirl.define do
  factory :contact do |f|
    f.title { Faker::Name.title }
    f.description { Faker::Lorem.paragraph }
    f.price { Faker::Number.decimal(2) }
    f.category { Faker::Lorem.word }
  end
end