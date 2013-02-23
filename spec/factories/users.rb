# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email { Faker::Internet.email}
  	username 'TestUser'
  	password 'hackme'
  	password_confirmation 'hackme'
  end
end
