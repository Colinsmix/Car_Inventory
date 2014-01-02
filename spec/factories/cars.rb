# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    color "MyString"
    year 1
    mileage 1.5
    description "MyText"
  end
end
