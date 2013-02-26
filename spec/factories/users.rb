# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email { Faker::Internet.email}
    sequence(:username) {|n| "User#{n}" }
  	password 'hackme'
  	password_confirmation 'hackme'
  end

  factory :owner, class: User do
  	email { Faker::Internet.email}
    username 'Owner'
  	password 'hackme'
  	password_confirmation 'hackme'
  end

end
