# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :soul do
    name "MyString"
    second_name "MyString"
    pname "MyString"
    category "MyString"
    old "MyInteger"
    price "MyDecimal"
    image "MyString"
    phone "MyString"
    email "MyString"
    describe "MyText"
    status "MyString"

  end
end
