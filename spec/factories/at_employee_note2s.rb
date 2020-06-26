FactoryGirl.define do
  factory :at_employee_note2 do
    name_if_not "MyString"
    employee nil
    issue "MyString"
    date_if_not_today "MyString"
    user nil
  end
end
