# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :diner do
    sequence(:name) {|n| "My Diner No #{n}" }
    street "TestStreet"
    number "TestNumber"
    zipcode "MyString"
    city "MyString"
    url "MyString"
    time "MyText"
    phone "MyString"
    urlmaps "https://maps.google.de/"
  end
end
