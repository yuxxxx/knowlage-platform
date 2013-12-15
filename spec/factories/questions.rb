# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    user nil
    category nil
    title "MyString"
    description "MyText"
  end
end
