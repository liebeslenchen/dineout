# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    diner { FactoryGirl.build(:diner) }
    dtime DateTime.now
  end
end
