require 'faker'
require 'rails_helper'
FactoryGirl.define do
  factory :furniture do |f|
    f.title { Faker::Name.title }
    f.description { Faker::Lorem.paragraph }
    f.price { Faker::Number.decimal(2) }
    f.category { Faker::Lorem.word }
    f.avatar { Faker::Avatar.image }
    f.delivery { Faker::Lorem.word }
  end
end