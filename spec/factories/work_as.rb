# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :work_a, :class => 'WorkAs' do
    work_as "MyString"
    category "MyString"
    image "MyString"
    old "MyInteger"
    price "MyDecimal"
    describe "MyText"
    status "MyString"
  end
end
