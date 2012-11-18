# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@puppa.pup" }

  factory :user do
    name 'Username'
    email
    password 'secret'
    password_confirmation 'secret'
  end
end
