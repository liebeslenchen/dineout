# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email { Faker::Internet.email}
  	password 'hackme'
  	password_confirmation 'hackme'
  end
end
